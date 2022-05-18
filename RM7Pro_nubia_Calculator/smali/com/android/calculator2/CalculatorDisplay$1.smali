.class Lcom/android/calculator2/CalculatorDisplay$1;
.super Ljava/lang/Object;
.source "CalculatorDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/CalculatorDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/CalculatorDisplay;


# direct methods
.method constructor <init>(Lcom/android/calculator2/CalculatorDisplay;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/calculator2/CalculatorDisplay$1;->this$0:Lcom/android/calculator2/CalculatorDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay$1;->this$0:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v0, p0}, Lcom/android/calculator2/CalculatorDisplay;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 45
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay$1;->this$0:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorDisplay;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay$1;->this$0:Lcom/android/calculator2/CalculatorDisplay;

    iget-object p0, p0, Lcom/android/calculator2/CalculatorDisplay$1;->this$0:Lcom/android/calculator2/CalculatorDisplay;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorDisplay;->access$000(Lcom/android/calculator2/CalculatorDisplay;)Landroid/transition/Transition;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method
