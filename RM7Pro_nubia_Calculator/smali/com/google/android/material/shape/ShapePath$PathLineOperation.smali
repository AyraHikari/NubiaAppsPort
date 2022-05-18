.class public Lcom/google/android/material/shape/ShapePath$PathLineOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathLineOperation"
.end annotation


# instance fields
.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 289
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F
    .locals 0

    .line 289
    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    return p0
.end method

.method static synthetic access$002(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F
    .locals 0

    .line 289
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F
    .locals 0

    .line 289
    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    return p0
.end method

.method static synthetic access$102(Lcom/google/android/material/shape/ShapePath$PathLineOperation;F)F
    .locals 0

    .line 289
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    return p1
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->matrix:Landroid/graphics/Matrix;

    .line 296
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 297
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 298
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 299
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
