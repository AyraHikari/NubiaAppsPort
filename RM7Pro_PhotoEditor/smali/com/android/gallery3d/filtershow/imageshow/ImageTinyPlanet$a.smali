.class Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:F

.field final synthetic b:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$a;->b:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x42c80000    # 100.0f

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$a;->a:F

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$a;->b:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->G(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)Lcom/android/gallery3d/filtershow/filters/c0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/f;->getValue()I

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$a;->a:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$a;->a:F

    float-to-int p1, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$a;->b:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->G(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)Lcom/android/gallery3d/filtershow/filters/c0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/f;->x()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$a;->b:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->G(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)Lcom/android/gallery3d/filtershow/filters/c0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/f;->h()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$a;->b:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->G(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)Lcom/android/gallery3d/filtershow/filters/c0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/filters/f;->l(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$a;->b:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$a;->b:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->H(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)Lcom/android/gallery3d/filtershow/editors/v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$a;->b:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->H(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)Lcom/android/gallery3d/filtershow/editors/v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/v;->W()V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$a;->b:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->b0:Z

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->G(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)Lcom/android/gallery3d/filtershow/filters/c0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/f;->getValue()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$a;->a:F

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$a;->b:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->b0:Z

    return-void
.end method
