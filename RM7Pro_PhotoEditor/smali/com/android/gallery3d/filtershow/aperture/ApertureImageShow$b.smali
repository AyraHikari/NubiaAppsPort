.class Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;-><init>(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->g(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->g(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->h(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->h(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->h(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->h(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->h(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le p1, v1, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->h(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->h(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge p1, v1, :cond_3

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->h(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->i(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    int-to-float v2, v0

    int-to-float v3, p1

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->j(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;FF)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->g(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->g(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->b(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;F)F

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->g(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->g(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->d(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;F)F

    new-instance p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)F

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->c(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)F

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->k(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageArcsoft;->v(Landroid/graphics/PointF;I)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->b(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;F)F

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->d(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;F)F

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->f(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)F

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->c(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)F

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow$b;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;->e(Lcom/android/gallery3d/filtershow/aperture/ApertureImageShow;)Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/aperture/ApertureBladeView;->getCurrentApert()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->k(FFF)V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method
