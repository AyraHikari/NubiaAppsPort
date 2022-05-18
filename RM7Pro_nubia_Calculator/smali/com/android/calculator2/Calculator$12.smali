.class Lcom/android/calculator2/Calculator$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Calculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/Calculator;->onError(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/Calculator;

.field final synthetic val$errorResourceId:I

.field final synthetic val$index:J


# direct methods
.method constructor <init>(Lcom/android/calculator2/Calculator;JI)V
    .locals 0

    .line 1955
    iput-object p1, p0, Lcom/android/calculator2/Calculator$12;->this$0:Lcom/android/calculator2/Calculator;

    iput-wide p2, p0, Lcom/android/calculator2/Calculator$12;->val$index:J

    iput p4, p0, Lcom/android/calculator2/Calculator$12;->val$errorResourceId:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1958
    iget-object p1, p0, Lcom/android/calculator2/Calculator$12;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {p1}, Lcom/android/calculator2/Calculator;->access$800(Lcom/android/calculator2/Calculator;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1959
    iget-object p1, p0, Lcom/android/calculator2/Calculator$12;->this$0:Lcom/android/calculator2/Calculator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/calculator2/Calculator;->access$802(Lcom/android/calculator2/Calculator;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 1961
    :cond_0
    iget-object p1, p0, Lcom/android/calculator2/Calculator$12;->this$0:Lcom/android/calculator2/Calculator;

    sget-object v0, Lcom/android/calculator2/Calculator$CalculatorState;->ERROR:Lcom/android/calculator2/Calculator$CalculatorState;

    invoke-static {p1, v0}, Lcom/android/calculator2/Calculator;->access$1000(Lcom/android/calculator2/Calculator;Lcom/android/calculator2/Calculator$CalculatorState;)V

    .line 1962
    iget-object p1, p0, Lcom/android/calculator2/Calculator$12;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {p1}, Lcom/android/calculator2/Calculator;->access$1100(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/CalculatorResult;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/calculator2/Calculator$12;->val$index:J

    iget p0, p0, Lcom/android/calculator2/Calculator$12;->val$errorResourceId:I

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/calculator2/CalculatorResult;->onError(JI)V

    return-void
.end method
