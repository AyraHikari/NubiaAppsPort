.class Lcom/android/calculator2/CalculatorService$NumberAction;
.super Ljava/lang/Object;
.source "CalculatorService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/CalculatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/CalculatorService;


# direct methods
.method private constructor <init>(Lcom/android/calculator2/CalculatorService;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/android/calculator2/CalculatorService$NumberAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calculator2/CalculatorService;Lcom/android/calculator2/CalculatorService$1;)V
    .locals 0

    .line 473
    invoke-direct {p0, p1}, Lcom/android/calculator2/CalculatorService$NumberAction;-><init>(Lcom/android/calculator2/CalculatorService;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 476
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 477
    check-cast p1, Landroid/widget/Button;

    .line 478
    iget-object v1, p0, Lcom/android/calculator2/CalculatorService$NumberAction;->this$0:Lcom/android/calculator2/CalculatorService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/calculator2/CalculatorService;->access$2600(Lcom/android/calculator2/CalculatorService;Z)V

    const v1, 0x7f0a0079

    if-ne v1, v0, :cond_0

    .line 480
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService$NumberAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorService;->access$2700(Lcom/android/calculator2/CalculatorService;)V

    goto/16 :goto_1

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/android/calculator2/CalculatorService$NumberAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {v1}, Lcom/android/calculator2/CalculatorService;->access$000(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const v3, 0x7f0a00a4

    if-eqz v2, :cond_2

    if-ne v3, v0, :cond_1

    .line 485
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService$NumberAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p1}, Lcom/android/calculator2/CalculatorService;->access$000(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/android/calculator2/CalculatorFormula;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService$NumberAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {v0}, Lcom/android/calculator2/CalculatorService;->access$000(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/calculator2/CalculatorFormula;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v2, "0"

    .line 490
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eq v3, v0, :cond_3

    const v1, 0x7f0a00a3

    if-ne v1, v0, :cond_4

    :cond_3
    const-string p1, "CalculatorService"

    const-string v0, "ignore more 0."

    .line 491
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 493
    :cond_4
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService$NumberAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {v0}, Lcom/android/calculator2/CalculatorService;->access$000(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/calculator2/CalculatorFormula;->append(Ljava/lang/CharSequence;)V

    .line 496
    :goto_0
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService$NumberAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p1}, Lcom/android/calculator2/CalculatorService;->access$000(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object p1

    iget-object p0, p0, Lcom/android/calculator2/CalculatorService$NumberAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorService;->access$000(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/calculator2/CalculatorFormula;->setSelection(I)V

    :goto_1
    return-void
.end method
