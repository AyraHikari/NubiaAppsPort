.class final enum Lcom/android/calculator2/CalculatorExpr$TokenKind;
.super Ljava/lang/Enum;
.source "CalculatorExpr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/CalculatorExpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TokenKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/calculator2/CalculatorExpr$TokenKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/calculator2/CalculatorExpr$TokenKind;

.field public static final enum CONSTANT:Lcom/android/calculator2/CalculatorExpr$TokenKind;

.field public static final enum OPERATOR:Lcom/android/calculator2/CalculatorExpr$TokenKind;

.field public static final enum PRE_EVAL:Lcom/android/calculator2/CalculatorExpr$TokenKind;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 86
    new-instance v0, Lcom/android/calculator2/CalculatorExpr$TokenKind;

    const-string v1, "CONSTANT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/calculator2/CalculatorExpr$TokenKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calculator2/CalculatorExpr$TokenKind;->CONSTANT:Lcom/android/calculator2/CalculatorExpr$TokenKind;

    new-instance v0, Lcom/android/calculator2/CalculatorExpr$TokenKind;

    const-string v1, "OPERATOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/calculator2/CalculatorExpr$TokenKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calculator2/CalculatorExpr$TokenKind;->OPERATOR:Lcom/android/calculator2/CalculatorExpr$TokenKind;

    new-instance v0, Lcom/android/calculator2/CalculatorExpr$TokenKind;

    const-string v1, "PRE_EVAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/calculator2/CalculatorExpr$TokenKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calculator2/CalculatorExpr$TokenKind;->PRE_EVAL:Lcom/android/calculator2/CalculatorExpr$TokenKind;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/calculator2/CalculatorExpr$TokenKind;

    sget-object v1, Lcom/android/calculator2/CalculatorExpr$TokenKind;->CONSTANT:Lcom/android/calculator2/CalculatorExpr$TokenKind;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/calculator2/CalculatorExpr$TokenKind;->OPERATOR:Lcom/android/calculator2/CalculatorExpr$TokenKind;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/calculator2/CalculatorExpr$TokenKind;->PRE_EVAL:Lcom/android/calculator2/CalculatorExpr$TokenKind;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calculator2/CalculatorExpr$TokenKind;->$VALUES:[Lcom/android/calculator2/CalculatorExpr$TokenKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/calculator2/CalculatorExpr$TokenKind;
    .locals 1

    .line 86
    const-class v0, Lcom/android/calculator2/CalculatorExpr$TokenKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/CalculatorExpr$TokenKind;

    return-object p0
.end method

.method public static values()[Lcom/android/calculator2/CalculatorExpr$TokenKind;
    .locals 1

    .line 86
    sget-object v0, Lcom/android/calculator2/CalculatorExpr$TokenKind;->$VALUES:[Lcom/android/calculator2/CalculatorExpr$TokenKind;

    invoke-virtual {v0}, [Lcom/android/calculator2/CalculatorExpr$TokenKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/calculator2/CalculatorExpr$TokenKind;

    return-object v0
.end method
