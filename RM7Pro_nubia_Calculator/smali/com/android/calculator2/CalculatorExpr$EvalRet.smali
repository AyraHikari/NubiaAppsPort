.class Lcom/android/calculator2/CalculatorExpr$EvalRet;
.super Ljava/lang/Object;
.source "CalculatorExpr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/CalculatorExpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EvalRet"
.end annotation


# instance fields
.field public pos:I

.field public final val:Lcom/android/calculator2/UnifiedReal;


# direct methods
.method constructor <init>(ILcom/android/calculator2/UnifiedReal;)V
    .locals 0

    .line 1995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1996
    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    .line 1997
    iput-object p2, p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    return-void
.end method
