.class public Lcom/google/android/material/shape/CutCornerTreatment;
.super Lcom/google/android/material/shape/CornerTreatment;
.source "CutCornerTreatment.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/CornerTreatment;-><init>(F)V

    return-void
.end method


# virtual methods
.method public getCornerPath(FFLcom/google/android/material/shape/ShapePath;)V
    .locals 4

    .line 38
    iget v0, p0, Lcom/google/android/material/shape/CutCornerTreatment;->cornerSize:F

    mul-float/2addr v0, p2

    const/high16 v1, 0x43340000    # 180.0f

    sub-float v2, v1, p1

    const/4 v3, 0x0

    invoke-virtual {p3, v3, v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->reset(FFFF)V

    float-to-double v0, p1

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget v2, p0, Lcom/google/android/material/shape/CutCornerTreatment;->cornerSize:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    float-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-float p2, v0

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float/2addr v0, p1

    float-to-double v0, v0

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget p0, p0, Lcom/google/android/material/shape/CutCornerTreatment;->cornerSize:F

    float-to-double p0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, v2

    double-to-float p0, v0

    .line 39
    invoke-virtual {p3, p2, p0}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    return-void
.end method
