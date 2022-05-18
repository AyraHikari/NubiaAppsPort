.class public Lcom/android/gallery3d/dng/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lcom/android/gallery3d/dng/ImageRGB;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->s()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/h;->C(Ljava/util/Collection;)Lcom/android/gallery3d/filtershow/imageshow/h$b;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/dng/ImageRGB;->c(Landroid/graphics/RectF;)V

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/z$b;->t()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/dng/ImageRGB;->d(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->r()Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/android/gallery3d/filtershow/filters/f;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/f;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/f;->h()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/f;->x()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/f;->getValue()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v2

    sub-float/2addr v3, v2

    div-float/2addr v1, v3

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/dng/ImageRGB;->a(Ljava/lang/String;F)V

    goto :goto_0

    :cond_2
    return-void
.end method
