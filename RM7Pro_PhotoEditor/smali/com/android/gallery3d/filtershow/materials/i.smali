.class public Lcom/android/gallery3d/filtershow/materials/i;
.super Lcom/android/gallery3d/filtershow/materials/j;
.source ""


# instance fields
.field private g:Landroid/graphics/Rect;

.field private h:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/materials/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/i;->h:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/materials/i;->k()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/materials/g;->a:I

    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/materials/g;->e()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/i;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/i;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/i;->h:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public h()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/j;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/j;->e:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/j;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "qipao.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/materials/r;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/i;->h:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/i;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/j;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "qipao.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/j;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/j;->e:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/j;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "readme.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/materials/r;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/i;->g:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/i;->g:Landroid/graphics/Rect;

    return-object v0
.end method

.method public k()I
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/j;->e:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/j;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "readme.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bubble"

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/filtershow/materials/r;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
