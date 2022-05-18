.class Lcom/android/calculator2/CalculatorService$5;
.super Ljava/lang/Object;
.source "CalculatorService.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/CalculatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/CalculatorService;


# direct methods
.method constructor <init>(Lcom/android/calculator2/CalculatorService;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/android/calculator2/CalculatorService$5;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 725
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService$5;->this$0:Lcom/android/calculator2/CalculatorService;

    sget-object v1, Lcom/android/calculator2/CalculatorService$CalculatorState;->INPUT:Lcom/android/calculator2/CalculatorService$CalculatorState;

    invoke-static {v0, v1}, Lcom/android/calculator2/CalculatorService;->access$3100(Lcom/android/calculator2/CalculatorService;Lcom/android/calculator2/CalculatorService$CalculatorState;)V

    const-string v0, "CalculatorService"

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aaron: afterTextChanged() in CalculatorService, editable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService$5;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {v0}, Lcom/android/calculator2/CalculatorService;->access$000(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calculator2/SystemUtil;->isFormulaContainsIllegalChars(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService$5;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {v0}, Lcom/android/calculator2/CalculatorService;->access$3200(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorExpressionEvaluator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calculator2/CalculatorService$5;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-virtual {v0, p1, v1}, Lcom/android/calculator2/CalculatorExpressionEvaluator;->evaluate(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorExpressionEvaluator$EvaluateCallback;)V

    const-string p1, "CalculatorService"

    const-string v0, "Aaron: evaluate, Formula Contains NO IllegalChars, call evaluate()."

    .line 729
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "CalculatorService"

    const-string v0, "Aaron: evaluate, Formula Contains IllegalChars, DO NOT call evaluate()."

    .line 731
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_0
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService$5;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p1}, Lcom/android/calculator2/CalculatorService;->access$100(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorScrollView4Float;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorScrollView4Float;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 734
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService$5;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {v0}, Lcom/android/calculator2/CalculatorService;->access$3300(Lcom/android/calculator2/CalculatorService;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 736
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService$5;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorService;->access$3300(Lcom/android/calculator2/CalculatorService;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
