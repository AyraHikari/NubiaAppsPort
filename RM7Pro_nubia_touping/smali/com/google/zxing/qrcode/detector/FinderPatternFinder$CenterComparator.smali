.class final Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CenterComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/zxing/qrcode/detector/FinderPattern;",
        ">;"
    }
.end annotation


# instance fields
.field private final average:F


# direct methods
.method private constructor <init>(F)V
    .locals 0
    .param p1, "f"    # F

    .prologue
    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->average:F

    .line 680
    return-void
.end method

.method synthetic constructor <init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V
    .locals 0
    .param p1, "x0"    # F
    .param p2, "x1"    # Lcom/google/zxing/qrcode/detector/FinderPatternFinder$1;

    .prologue
    .line 676
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(F)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)I
    .locals 4
    .param p1, "center1"    # Lcom/google/zxing/qrcode/detector/FinderPattern;
    .param p2, "center2"    # Lcom/google/zxing/qrcode/detector/FinderPattern;

    .prologue
    .line 683
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 684
    .local v0, "countCompare":I
    if-nez v0, :cond_0

    .line 685
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v1

    iget v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->average:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 686
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v2

    iget v3, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->average:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 685
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    .line 688
    .end local v0    # "countCompare":I
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 676
    check-cast p1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    check-cast p2, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->compare(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)I

    move-result v0

    return v0
.end method
