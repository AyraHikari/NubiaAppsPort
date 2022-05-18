.class Lcom/android/calculator2/CalculatorService$OperatorAction;
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
    name = "OperatorAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/CalculatorService;


# direct methods
.method private constructor <init>(Lcom/android/calculator2/CalculatorService;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/android/calculator2/CalculatorService$OperatorAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calculator2/CalculatorService;Lcom/android/calculator2/CalculatorService$1;)V
    .locals 0

    .line 510
    invoke-direct {p0, p1}, Lcom/android/calculator2/CalculatorService$OperatorAction;-><init>(Lcom/android/calculator2/CalculatorService;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 513
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 514
    check-cast p1, Landroid/widget/Button;

    .line 515
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService$OperatorAction;->this$0:Lcom/android/calculator2/CalculatorService;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/calculator2/CalculatorService;->access$2600(Lcom/android/calculator2/CalculatorService;Z)V

    const p1, 0x7f0a014f

    if-ne p1, v0, :cond_0

    .line 517
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService$OperatorAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorService;->access$000(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object p0

    const-string p1, "+"

    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorFormula;->append(Ljava/lang/CharSequence;)V

    const-string p0, "CalculatorService"

    const-string p1, "onClick: add"

    .line 518
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const p1, 0x7f0a0158

    if-ne p1, v0, :cond_1

    .line 520
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService$OperatorAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorService;->access$000(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object p0

    const-string p1, "-"

    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorFormula;->append(Ljava/lang/CharSequence;)V

    const-string p0, "CalculatorService"

    const-string p1, "onClick: sub"

    .line 521
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const p1, 0x7f0a0152

    if-ne p1, v0, :cond_2

    .line 523
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService$OperatorAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorService;->access$000(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object p0

    const-string p1, "*"

    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorFormula;->append(Ljava/lang/CharSequence;)V

    const-string p0, "CalculatorService"

    const-string p1, "onClick: mul"

    .line 524
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const p1, 0x7f0a0150

    if-ne p1, v0, :cond_3

    .line 526
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService$OperatorAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorService;->access$000(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorFormula;->append(Ljava/lang/CharSequence;)V

    const-string p0, "CalculatorService"

    const-string p1, "onClick: div"

    .line 527
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
