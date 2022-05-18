.class public Lcom/android/gallery3d/filtershow/mosaic/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/graphics/Path;

.field private b:Landroid/graphics/Matrix;

.field private c:I

.field private d:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;Landroid/graphics/Matrix;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/f;->d:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/mosaic/f;->a:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/mosaic/f;->b:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iput p3, p0, Lcom/android/gallery3d/filtershow/mosaic/f;->c:I

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Path;
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/f;->d:Landroid/graphics/Path;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/f;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/mosaic/f;->a:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/mosaic/f;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/f;->d:Landroid/graphics/Path;

    return-object v0
.end method

.method public b(Landroid/graphics/Matrix;)Landroid/graphics/Path;
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/f;->d:Landroid/graphics/Path;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/f;->d:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/f;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/mosaic/f;->a:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/f;->b:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/mosaic/f;->d:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/mosaic/f;->d:Landroid/graphics/Path;

    return-object p1
.end method

.method public c()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/f;->a:Landroid/graphics/Path;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/mosaic/f;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/mosaic/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/gallery3d/filtershow/mosaic/f;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/f;->a:Landroid/graphics/Path;

    iget-object v2, p1, Lcom/android/gallery3d/filtershow/mosaic/f;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/f;->b:Landroid/graphics/Matrix;

    iget-object v2, p1, Lcom/android/gallery3d/filtershow/mosaic/f;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/filtershow/mosaic/f;->c:I

    iget p1, p1, Lcom/android/gallery3d/filtershow/mosaic/f;->c:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
