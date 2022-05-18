.class public Lcom/android/gallery3d/dng/ImageRGB;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Landroid/graphics/RectF;

.field public b:I

.field public c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/dng/ImageRGB;->a:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/dng/ImageRGB;->b:I

    iput-object v0, p0, Lcom/android/gallery3d/dng/ImageRGB;->c:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/dng/ImageRGB;->d:Z

    const-string v0, "ImageRGB"

    iput-object v0, p0, Lcom/android/gallery3d/dng/ImageRGB;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;F)V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/dng/ImageRGB;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/dng/ImageRGB;->c:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/dng/ImageRGB;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/gallery3d/dng/ImageRGB;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/dng/ImageRGB;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addParameter key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/dng/ImageRGB;->c:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    iget-object v0, p0, Lcom/android/gallery3d/dng/ImageRGB;->a:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    iget v8, p0, Lcom/android/gallery3d/dng/ImageRGB;->b:I

    iget-object v9, p0, Lcom/android/gallery3d/dng/ImageRGB;->c:Ljava/util/HashMap;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/gallery3d/dng/ImageRGB;->saveDNGImage(Ljava/lang/String;Ljava/lang/String;FFFFILjava/util/HashMap;)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/graphics/RectF;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/gallery3d/dng/ImageRGB;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/dng/ImageRGB;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageRGB setRect x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " y ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " right ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " bottom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/dng/ImageRGB;->a:Landroid/graphics/RectF;

    return-void
.end method

.method public d(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/gallery3d/dng/ImageRGB;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/dng/ImageRGB;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageRGB setRotation rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/gallery3d/dng/ImageRGB;->b:I

    return-void
.end method

.method public native dng2rgb(Ljava/lang/String;[I)[I
.end method

.method public native saveDNGImage(Ljava/lang/String;Ljava/lang/String;FFFFILjava/util/HashMap;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FFFFI",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation
.end method
