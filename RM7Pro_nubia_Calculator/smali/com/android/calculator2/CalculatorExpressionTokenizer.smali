.class Lcom/android/calculator2/CalculatorExpressionTokenizer;
.super Ljava/lang/Object;
.source "CalculatorExpressionTokenizer.java"


# instance fields
.field private final mReplacementMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    .line 32
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    const-string v1, "."

    const v2, 0x7f11003d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    const-string v1, "0"

    const v2, 0x7f110068

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    const-string v1, "1"

    const v2, 0x7f11006a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    const-string v1, "2"

    const v2, 0x7f11006b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    const-string v1, "3"

    const v2, 0x7f11006c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    const-string v1, "4"

    const v2, 0x7f11006d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    const-string v1, "5"

    const v2, 0x7f11006e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    const-string v1, "6"

    const v2, 0x7f11006f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    const-string v1, "7"

    const v2, 0x7f110070

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    const-string v1, "8"

    const v2, 0x7f110071

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    const-string v1, "9"

    const v2, 0x7f110072

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    const-string v1, "/"

    const v2, 0x7f1100b7

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    const-string v1, "*"

    const v2, 0x7f1100ba

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    const-string v1, "-"

    const v2, 0x7f1100bf

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    const-string v1, "cos"

    const v2, 0x7f110091

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    const-string v1, "ln"

    const v2, 0x7f110093

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    const-string v1, "log"

    const v2, 0x7f110094

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    const-string v1, "sin"

    const v2, 0x7f110095

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    const-string v1, "tan"

    const v2, 0x7f110096

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    const-string p1, "Infinity"

    const-string v0, "inf"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method getLocalizedExpression(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 66
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method getNormalizedExpression(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 59
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpressionTokenizer;->mReplacementMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 60
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method
