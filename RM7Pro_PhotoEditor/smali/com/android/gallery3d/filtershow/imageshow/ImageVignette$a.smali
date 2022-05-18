.class Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/imageshow/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/android/gallery3d/filtershow/imageshow/z;

.field b:Landroid/graphics/Matrix;

.field c:Landroid/graphics/Matrix;

.field d:I

.field e:I

.field f:[F

.field g:F

.field h:F


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->a:Lcom/android/gallery3d/filtershow/imageshow/z;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/imageshow/z;->a()F

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->d:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->a:Lcom/android/gallery3d/filtershow/imageshow/z;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/imageshow/z;->r()F

    move-result v1

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->e:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->b:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public b(Lcom/android/gallery3d/filtershow/imageshow/z;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->a:Lcom/android/gallery3d/filtershow/imageshow/z;

    return-void
.end method

.method public c(Landroid/graphics/Matrix;Landroid/graphics/Matrix;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->b:Landroid/graphics/Matrix;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->c:Landroid/graphics/Matrix;

    iput p3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->d:I

    iput p4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->e:I

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->a()F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->g:F

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->r()F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->h:F

    return-void
.end method

.method public d(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->g:F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->h:F

    const/4 v2, 0x1

    aput p1, v0, v2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->a:Lcom/android/gallery3d/filtershow/imageshow/z;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    aget v0, v0, v1

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/z;->d(F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->a:Lcom/android/gallery3d/filtershow/imageshow/z;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    aget v0, v0, v2

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/z;->u(F)V

    return-void
.end method

.method public g(FF)V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->c:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->a:Lcom/android/gallery3d/filtershow/imageshow/z;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    aget v1, v0, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->d:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    aget p1, v0, p1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->e:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-interface {p2, v1, p1}, Lcom/android/gallery3d/filtershow/imageshow/z;->g(FF)V

    return-void
.end method

.method public k()F
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->a:Lcom/android/gallery3d/filtershow/imageshow/z;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/imageshow/z;->q()F

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->d:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->a:Lcom/android/gallery3d/filtershow/imageshow/z;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/imageshow/z;->k()F

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->e:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->b:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    aget v0, v0, v2

    return v0
.end method

.method public o(FF)V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->g:F

    const/4 v1, 0x0

    aput p1, v0, v1

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->h:F

    const/4 p1, 0x1

    aput p2, v0, p1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->c:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->a:Lcom/android/gallery3d/filtershow/imageshow/z;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    aget v1, v0, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->d:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    aget p1, v0, p1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->e:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-interface {p2, v1, p1}, Lcom/android/gallery3d/filtershow/imageshow/z;->o(FF)V

    return-void
.end method

.method public q()F
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->a:Lcom/android/gallery3d/filtershow/imageshow/z;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/imageshow/z;->q()F

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->d:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->a:Lcom/android/gallery3d/filtershow/imageshow/z;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/imageshow/z;->k()F

    move-result v1

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->e:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->b:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    aget v0, v0, v2

    return v0
.end method

.method public r()F
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->a:Lcom/android/gallery3d/filtershow/imageshow/z;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/imageshow/z;->a()F

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->d:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->a:Lcom/android/gallery3d/filtershow/imageshow/z;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/imageshow/z;->r()F

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->e:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->b:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public u(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->g:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->h:F

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->a:Lcom/android/gallery3d/filtershow/imageshow/z;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    aget v0, v0, v2

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->d:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-interface {p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/z;->d(F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->a:Lcom/android/gallery3d/filtershow/imageshow/z;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->f:[F

    aget v0, v0, v1

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette$a;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/z;->u(F)V

    return-void
.end method
