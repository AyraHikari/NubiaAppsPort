.class public Lcom/android/gallery3d/filtershow/filters/j0;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source ""


# instance fields
.field private a:Lcom/android/gallery3d/filtershow/filters/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/j0;->a:Lcom/android/gallery3d/filtershow/filters/r;

    const-string v0, "Border"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/j0;->d()Lcom/android/gallery3d/filtershow/filters/r;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/j0;->d()Lcom/android/gallery3d/filtershow/filters/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/r;->m0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/j0;->d()Lcom/android/gallery3d/filtershow/filters/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/r;->l0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/materials/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/materials/m;->k(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/j0;->d()Lcom/android/gallery3d/filtershow/filters/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/r;->l0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/materials/h;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/h;->h()Lcom/android/gallery3d/filtershow/d/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/d/a;->a(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/android/gallery3d/filtershow/filters/r;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/j0;->a:Lcom/android/gallery3d/filtershow/filters/r;

    return-object v0
.end method

.method public e(Landroid/content/res/Resources;)V
    .locals 0

    return-void
.end method

.method public freeResources()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/j0;->d()Lcom/android/gallery3d/filtershow/filters/r;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/j0;->d()Lcom/android/gallery3d/filtershow/filters/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/r;->m0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/j0;->d()Lcom/android/gallery3d/filtershow/filters/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/r;->l0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/materials/m;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/m;->e()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/j0;->d()Lcom/android/gallery3d/filtershow/filters/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/r;->l0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/materials/h;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/h;->h()Lcom/android/gallery3d/filtershow/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/d/a;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/r;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/j0;->a:Lcom/android/gallery3d/filtershow/filters/r;

    return-void
.end method
