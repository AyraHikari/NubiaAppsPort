.class public Lcom/android/gallery3d/filtershow/filters/d;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/c;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/filters/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/d;->getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/c;->m0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/filters/a;->a(Lcom/android/gallery3d/filtershow/filters/x;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->useRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 0

    const p0, 0x0

    throw p0
.end method
