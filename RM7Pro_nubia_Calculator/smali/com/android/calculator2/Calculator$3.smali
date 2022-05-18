.class Lcom/android/calculator2/Calculator$3;
.super Ljava/lang/Object;
.source "Calculator.java"

# interfaces
.implements Lcom/android/calculator2/Evaluator$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/Calculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/Calculator;


# direct methods
.method constructor <init>(Lcom/android/calculator2/Calculator;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/android/calculator2/Calculator$3;->this$0:Lcom/android/calculator2/Calculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMemoryStateChanged()V
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/android/calculator2/Calculator$3;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {p0}, Lcom/android/calculator2/Calculator;->access$000(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorFormula;->onMemoryStateChanged()V

    return-void
.end method

.method public showMessageDialog(IIILjava/lang/String;)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 278
    iget-object p0, p0, Lcom/android/calculator2/Calculator$3;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/calculator2/AlertDialogFragment;->showMessageDialog(Landroid/app/Activity;IIILjava/lang/String;)V

    return-void
.end method
