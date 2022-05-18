.class public abstract Lcom/android/gallery3d/filtershow/materials/o;
.super Lcom/android/gallery3d/filtershow/materials/g;
.source ""


# instance fields
.field protected e:Landroid/content/Context;

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:Lc/e/c/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p4}, Lcom/android/gallery3d/filtershow/materials/g;-><init>(Ljava/lang/String;)V

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/android/gallery3d/filtershow/materials/o;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/o;->e:Landroid/content/Context;

    iput p2, p0, Lcom/android/gallery3d/filtershow/materials/o;->f:I

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/materials/o;->g:Ljava/lang/String;

    invoke-static {p2, p3, p1}, Lc/e/c/l;->a(ILjava/lang/String;Landroid/content/Context;)Lc/e/c/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/o;->h:Lc/e/c/k;

    const-string p1, "categorytype"

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/materials/o;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p1, "version"

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/materials/o;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/materials/o;->i()I

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/g;->c:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/materials/o;->j()V

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/g;->c:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/o;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/o;->h:Lc/e/c/k;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lc/e/c/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public i()I
    .locals 2

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/materials/o;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/o;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/gallery3d/filtershow/g/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x96

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/filtershow/materials/a;->c(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/g;->c:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
