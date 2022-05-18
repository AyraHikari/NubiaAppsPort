.class Lcom/android/calculator2/CalculatorService$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CalculatorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/CalculatorService;->onResult(Ljava/lang/String;)V
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

    .line 691
    iput-object p1, p0, Lcom/android/calculator2/CalculatorService$3;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 694
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService$3;->this$0:Lcom/android/calculator2/CalculatorService;

    sget-object p1, Lcom/android/calculator2/CalculatorService$CalculatorState;->RESULT:Lcom/android/calculator2/CalculatorService$CalculatorState;

    invoke-static {p0, p1}, Lcom/android/calculator2/CalculatorService;->access$3100(Lcom/android/calculator2/CalculatorService;Lcom/android/calculator2/CalculatorService$CalculatorState;)V

    return-void
.end method
