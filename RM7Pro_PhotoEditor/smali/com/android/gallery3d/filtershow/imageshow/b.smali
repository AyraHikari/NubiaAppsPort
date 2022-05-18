.class public Lcom/android/gallery3d/filtershow/imageshow/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/b;->a:F

    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/b;->b:F

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/imageshow/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/gallery3d/filtershow/imageshow/b;->a:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/b;->a:F

    iget p1, p1, Lcom/android/gallery3d/filtershow/imageshow/b;->b:F

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/b;->b:F

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/gallery3d/filtershow/imageshow/b;

    iget p1, p1, Lcom/android/gallery3d/filtershow/imageshow/b;->a:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/b;->a:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public r(Lcom/android/gallery3d/filtershow/imageshow/b;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/b;->a:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/android/gallery3d/filtershow/imageshow/b;->a:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/b;->b:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget p1, p1, Lcom/android/gallery3d/filtershow/imageshow/b;->b:F

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method
