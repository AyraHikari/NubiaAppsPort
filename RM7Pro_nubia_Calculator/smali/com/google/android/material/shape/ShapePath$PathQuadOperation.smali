.class public Lcom/google/android/material/shape/ShapePath$PathQuadOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathQuadOperation"
.end annotation


# instance fields
.field public controlX:F

.field public controlY:F

.field public endX:F

.field public endY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 304
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->matrix:Landroid/graphics/Matrix;

    .line 313
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 314
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 315
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlX:F

    iget v1, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlY:F

    iget v2, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endX:F

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endY:F

    invoke-virtual {p2, v0, v1, v2, p0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 316
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
