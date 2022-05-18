.class public abstract Lcom/android/gallery3d/filtershow/materials/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:Landroid/graphics/Bitmap;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/g;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/g;->c:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/materials/g;->d:I

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/materials/g;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public abstract c(Landroid/content/Context;)Landroid/graphics/Bitmap;
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/g;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/g;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/g;->c:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/materials/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/materials/g;

    iget v0, p0, Lcom/android/gallery3d/filtershow/materials/g;->a:I

    iget v2, p1, Lcom/android/gallery3d/filtershow/materials/g;->a:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/g;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/gallery3d/filtershow/materials/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/materials/g;->d:I

    iget p1, p1, Lcom/android/gallery3d/filtershow/materials/g;->d:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/materials/g;->d:I

    return-void
.end method
