.class Lcom/android/calculator2/CalculatorService$6;
.super Landroid/text/Editable$Factory;
.source "CalculatorService.java"


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

    .line 766
    iput-object p1, p0, Lcom/android/calculator2/CalculatorService$6;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-direct {p0}, Landroid/text/Editable$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 2

    .line 769
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService$6;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {v0}, Lcom/android/calculator2/CalculatorService;->access$3400(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorService$CalculatorState;

    move-result-object v0

    sget-object v1, Lcom/android/calculator2/CalculatorService$CalculatorState;->INPUT:Lcom/android/calculator2/CalculatorService$CalculatorState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/calculator2/CalculatorService$6;->this$0:Lcom/android/calculator2/CalculatorService;

    .line 770
    invoke-static {v0}, Lcom/android/calculator2/CalculatorService;->access$3400(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorService$CalculatorState;

    move-result-object v0

    sget-object v1, Lcom/android/calculator2/CalculatorService$CalculatorState;->ERROR:Lcom/android/calculator2/CalculatorService$CalculatorState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 771
    :goto_1
    new-instance v1, Lcom/android/calculator2/CalculatorExpressionBuilder;

    iget-object p0, p0, Lcom/android/calculator2/CalculatorService$6;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorService;->access$3500(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorExpressionTokenizer;

    move-result-object p0

    invoke-direct {v1, p1, p0, v0}, Lcom/android/calculator2/CalculatorExpressionBuilder;-><init>(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorExpressionTokenizer;Z)V

    return-object v1
.end method
