.class public Lcom/google/android/material/shape/MaterialShapeUtils;
.super Ljava/lang/Object;
.source "MaterialShapeUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 37
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p0

    return-object p0

    .line 35
    :pswitch_0
    new-instance p0, Lcom/google/android/material/shape/CutCornerTreatment;

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/CutCornerTreatment;-><init>(F)V

    return-object p0

    .line 33
    :pswitch_1
    new-instance p0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/RoundedCornerTreatment;-><init>(F)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;
    .locals 2

    .line 42
    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/RoundedCornerTreatment;-><init>(F)V

    return-object v0
.end method

.method static createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 1

    .line 46
    new-instance v0, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-direct {v0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    return-object v0
.end method
