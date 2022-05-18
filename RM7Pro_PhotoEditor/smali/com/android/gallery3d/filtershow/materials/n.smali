.class public Lcom/android/gallery3d/filtershow/materials/n;
.super Lcom/android/gallery3d/filtershow/materials/o;
.source ""


# instance fields
.field private i:Landroid/graphics/Rect;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/filtershow/materials/o;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/gallery3d/filtershow/materials/n;->j:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/materials/n;->k:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/materials/n;->l:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/materials/n;->m:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/n;->n:Ljava/util/HashMap;

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/n;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/n;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private m(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/n;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/materials/o;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    array-length v2, v1

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/n;->n:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public e()V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/n;->k()V

    return-void
.end method

.method public l()I
    .locals 2

    const-string v0, "bottom"

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

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/materials/n;->m:I

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/materials/n;->m:I

    return v0
.end method

.method public n()I
    .locals 2

    const-string v0, "left"

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

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/materials/n;->j:I

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/materials/n;->j:I

    return v0
.end method

.method public o()Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "path"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/materials/n;->m(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public p()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/n;->i:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/materials/n;->n()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/n;->i:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/materials/n;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/n;->i:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/materials/n;->q()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/n;->i:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/materials/n;->l()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/n;->i:Landroid/graphics/Rect;

    return-object v0
.end method

.method public q()I
    .locals 2

    const-string v0, "right"

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

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/materials/n;->l:I

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/materials/n;->l:I

    return v0
.end method

.method public r()I
    .locals 2

    const-string v0, "top"

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

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/materials/n;->k:I

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/materials/n;->k:I

    return v0
.end method
