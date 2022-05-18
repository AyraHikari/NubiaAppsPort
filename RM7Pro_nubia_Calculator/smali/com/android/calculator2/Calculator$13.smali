.class Lcom/android/calculator2/Calculator$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Calculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/Calculator;->onResult(ZZ)V
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

    .line 2058
    iput-object p1, p0, Lcom/android/calculator2/Calculator$13;->this$0:Lcom/android/calculator2/Calculator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2061
    iget-object p1, p0, Lcom/android/calculator2/Calculator$13;->this$0:Lcom/android/calculator2/Calculator;

    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->RESULT:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-static {p1, v0}, Lcom/android/calculator2/Calculator;->access$1000(Lcom/android/calculator2/Calculator;Lcom/android/calculator2/Calculator$CalculatorState;)V

    const-string p1, "Calculator"

    const-string v0, "set CalculatorState.RESULT."

    .line 2062
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget-object p0, p0, Lcom/android/calculator2/Calculator$13;->this$0:Lcom/android/calculator2/Calculator;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/calculator2/Calculator;->access$902(Lcom/android/calculator2/Calculator;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
