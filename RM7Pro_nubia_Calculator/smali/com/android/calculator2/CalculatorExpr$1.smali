.class synthetic Lcom/android/calculator2/CalculatorExpr$1;
.super Ljava/lang/Object;
.source "CalculatorExpr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/CalculatorExpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$calculator2$CalculatorExpr$TokenKind:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 787
    invoke-static {}, Lcom/android/calculator2/CalculatorExpr$TokenKind;->values()[Lcom/android/calculator2/CalculatorExpr$TokenKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/calculator2/CalculatorExpr$1;->$SwitchMap$com$android$calculator2$CalculatorExpr$TokenKind:[I

    :try_start_0
    sget-object v0, Lcom/android/calculator2/CalculatorExpr$1;->$SwitchMap$com$android$calculator2$CalculatorExpr$TokenKind:[I

    sget-object v1, Lcom/android/calculator2/CalculatorExpr$TokenKind;->CONSTANT:Lcom/android/calculator2/CalculatorExpr$TokenKind;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorExpr$TokenKind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/calculator2/CalculatorExpr$1;->$SwitchMap$com$android$calculator2$CalculatorExpr$TokenKind:[I

    sget-object v1, Lcom/android/calculator2/CalculatorExpr$TokenKind;->PRE_EVAL:Lcom/android/calculator2/CalculatorExpr$TokenKind;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorExpr$TokenKind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
