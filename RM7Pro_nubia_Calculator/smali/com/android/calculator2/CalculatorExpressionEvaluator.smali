.class public Lcom/android/calculator2/CalculatorExpressionEvaluator;
.super Ljava/lang/Object;
.source "CalculatorExpressionEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/CalculatorExpressionEvaluator$EvaluateCallback;
    }
.end annotation


# static fields
.field private static final MAX_DIGITS:I = 0x14

.field private static final ROUNDING_DIGITS:I = 0x2


# instance fields
.field private final mSymbols:Lorg/javia/arity/Symbols;

.field private final mTokenizer:Lcom/android/calculator2/CalculatorExpressionTokenizer;


# direct methods
.method constructor <init>(Lcom/android/calculator2/CalculatorExpressionTokenizer;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/javia/arity/Symbols;

    invoke-direct {v0}, Lorg/javia/arity/Symbols;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorExpressionEvaluator;->mSymbols:Lorg/javia/arity/Symbols;

    .line 33
    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpressionEvaluator;->mTokenizer:Lcom/android/calculator2/CalculatorExpressionTokenizer;

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorExpressionEvaluator$EvaluateCallback;)V
    .locals 0

    .line 37
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpressionEvaluator;->evaluate(Ljava/lang/String;Lcom/android/calculator2/CalculatorExpressionEvaluator$EvaluateCallback;)V

    return-void
.end method

.method public evaluate(Ljava/lang/String;Lcom/android/calculator2/CalculatorExpressionEvaluator$EvaluateCallback;)V
    .locals 6

    .line 41
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpressionEvaluator;->mTokenizer:Lcom/android/calculator2/CalculatorExpressionTokenizer;

    invoke-virtual {v0, p1}, Lcom/android/calculator2/CalculatorExpressionTokenizer;->getNormalizedExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_0

    const-string v0, "+-/*"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 47
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 48
    :cond_1
    invoke-interface {p2, p1, v0, v1}, Lcom/android/calculator2/CalculatorExpressionEvaluator$EvaluateCallback;->onEvaluate(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 56
    :catch_0
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/calculator2/CalculatorExpressionEvaluator;->mSymbols:Lorg/javia/arity/Symbols;

    invoke-virtual {v2, p1}, Lorg/javia/arity/Symbols;->eval(Ljava/lang/String;)D

    move-result-wide v2

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_3

    const p0, 0x7f110076

    .line 58
    invoke-interface {p2, p1, v0, p0}, Lcom/android/calculator2/CalculatorExpressionEvaluator$EvaluateCallback;->onEvaluate(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 63
    :cond_3
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpressionEvaluator;->mTokenizer:Lcom/android/calculator2/CalculatorExpressionTokenizer;

    const/16 v4, 0x14

    const/4 v5, 0x2

    .line 64
    invoke-static {v2, v3, v4, v5}, Lorg/javia/arity/Util;->doubleToString(DII)Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {p0, v2}, Lcom/android/calculator2/CalculatorExpressionTokenizer;->getLocalizedExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 65
    invoke-interface {p2, p1, p0, v1}, Lcom/android/calculator2/CalculatorExpressionEvaluator$EvaluateCallback;->onEvaluate(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/javia/arity/SyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const p0, 0x7f110078

    .line 68
    invoke-interface {p2, p1, v0, p0}, Lcom/android/calculator2/CalculatorExpressionEvaluator$EvaluateCallback;->onEvaluate(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method
