.class public Lcom/android/gallery3d/filtershow/mosaic/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/android/gallery3d/filtershow/mosaic/f;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/mosaic/f;IILandroid/graphics/Matrix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/mosaic/b;->a:Lcom/android/gallery3d/filtershow/mosaic/f;

    iput p2, p0, Lcom/android/gallery3d/filtershow/mosaic/b;->b:I

    iput p3, p0, Lcom/android/gallery3d/filtershow/mosaic/b;->c:I

    iput-object p4, p0, Lcom/android/gallery3d/filtershow/mosaic/b;->d:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/mosaic/b;->b:I

    return v0
.end method

.method public b()Landroid/graphics/Path;
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/mosaic/b;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/b;->a:Lcom/android/gallery3d/filtershow/mosaic/f;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/f;->a()Landroid/graphics/Path;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/b;->a:Lcom/android/gallery3d/filtershow/mosaic/f;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/mosaic/b;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/mosaic/f;->b(Landroid/graphics/Matrix;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/b;->a:Lcom/android/gallery3d/filtershow/mosaic/f;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/f;->c()Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/b;->d:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/mosaic/b;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/android/gallery3d/filtershow/mosaic/b;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/gallery3d/filtershow/mosaic/b;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/mosaic/b;->a:Lcom/android/gallery3d/filtershow/mosaic/f;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/filtershow/mosaic/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/gallery3d/filtershow/mosaic/b;->b:I

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/mosaic/b;->a()I

    move-result p1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/b;->a:Lcom/android/gallery3d/filtershow/mosaic/f;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/f;->d()I

    move-result v0

    return v0
.end method
