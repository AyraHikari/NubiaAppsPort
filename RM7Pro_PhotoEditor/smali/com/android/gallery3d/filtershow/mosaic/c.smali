.class public Lcom/android/gallery3d/filtershow/mosaic/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Bitmap;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/f;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/f;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/android/gallery3d/filtershow/mosaic/d;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/mosaic/d;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->c:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->f:Lcom/android/gallery3d/filtershow/mosaic/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->f:Lcom/android/gallery3d/filtershow/mosaic/d;

    iput p2, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->f:Lcom/android/gallery3d/filtershow/mosaic/d;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->b:I

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/filtershow/mosaic/d;->e(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->c:Landroid/graphics/Bitmap;

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->c:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public c(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->c:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->c:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/mosaic/c;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/mosaic/c;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->d:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->e:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/mosaic/c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/mosaic/c;

    iget v0, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->a:I

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/mosaic/c;->f()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->b:I

    iget v1, p1, Lcom/android/gallery3d/filtershow/mosaic/c;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->e:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/mosaic/c;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->d:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/mosaic/c;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->a:I

    return v0
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/mosaic/c;->a:I

    return-void
.end method
