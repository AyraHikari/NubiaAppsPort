.class public Lcom/google/android/material/shape/RoundedCornerTreatment;
.super Lcom/google/android/material/shape/CornerTreatment;
.source "RoundedCornerTreatment.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/CornerTreatment;-><init>(F)V

    return-void
.end method


# virtual methods
.method public getCornerPath(FFLcom/google/android/material/shape/ShapePath;)V
    .locals 7

    .line 34
    iget p0, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;->cornerSize:F

    mul-float v0, p0, p2

    const/high16 v1, 0x43340000    # 180.0f

    sub-float v2, v1, p1

    const/4 v3, 0x0

    .line 35
    invoke-virtual {p3, v3, v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->reset(FFFF)V

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    mul-float v4, p0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v5, 0x43340000    # 180.0f

    move-object v0, p3

    move v3, v4

    move v6, p1

    .line 36
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    return-void
.end method
