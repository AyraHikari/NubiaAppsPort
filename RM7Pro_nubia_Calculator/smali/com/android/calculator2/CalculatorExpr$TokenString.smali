.class Lcom/android/calculator2/CalculatorExpr$TokenString;
.super Ljava/lang/Object;
.source "CalculatorExpr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/CalculatorExpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TokenString"
.end annotation


# instance fields
.field private endPos:I

.field private startPos:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2496
    invoke-direct {p0, v0, v0}, Lcom/android/calculator2/CalculatorExpr$TokenString;-><init>(II)V

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .line 2499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2500
    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$TokenString;->startPos:I

    .line 2501
    iput p2, p0, Lcom/android/calculator2/CalculatorExpr$TokenString;->endPos:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/calculator2/CalculatorExpr$TokenString;)I
    .locals 0

    .line 2490
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorExpr$TokenString;->getStartPos()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/calculator2/CalculatorExpr$TokenString;)I
    .locals 0

    .line 2490
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorExpr$TokenString;->getEndPos()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/calculator2/CalculatorExpr$TokenString;I)V
    .locals 0

    .line 2490
    invoke-direct {p0, p1}, Lcom/android/calculator2/CalculatorExpr$TokenString;->setStartPos(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calculator2/CalculatorExpr$TokenString;I)V
    .locals 0

    .line 2490
    invoke-direct {p0, p1}, Lcom/android/calculator2/CalculatorExpr$TokenString;->setEndPos(I)V

    return-void
.end method

.method private getEndPos()I
    .locals 0

    .line 2517
    iget p0, p0, Lcom/android/calculator2/CalculatorExpr$TokenString;->endPos:I

    return p0
.end method

.method private getStartPos()I
    .locals 0

    .line 2513
    iget p0, p0, Lcom/android/calculator2/CalculatorExpr$TokenString;->startPos:I

    return p0
.end method

.method private setEndPos(I)V
    .locals 0

    .line 2509
    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$TokenString;->endPos:I

    return-void
.end method

.method private setStartPos(I)V
    .locals 0

    .line 2505
    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$TokenString;->startPos:I

    return-void
.end method
