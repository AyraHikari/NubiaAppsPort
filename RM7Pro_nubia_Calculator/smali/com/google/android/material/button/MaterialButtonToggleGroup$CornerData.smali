.class Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;
.super Ljava/lang/Object;
.source "MaterialButtonToggleGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButtonToggleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CornerData"
.end annotation


# instance fields
.field final bottomLeft:F

.field final bottomRight:F

.field final topLeft:F

.field final topRight:F


# direct methods
.method constructor <init>(FFFF)V
    .locals 0

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->topLeft:F

    .line 603
    iput p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->topRight:F

    .line 604
    iput p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottomRight:F

    .line 605
    iput p4, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottomLeft:F

    return-void
.end method
