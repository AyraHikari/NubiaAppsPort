.class Lcom/android/calculator2/Calculator$16;
.super Ljava/lang/Object;
.source "Calculator.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 2686
    iput-object p1, p0, Lcom/android/calculator2/Calculator$16;->this$0:Lcom/android/calculator2/Calculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 2689
    iget-object p1, p0, Lcom/android/calculator2/Calculator$16;->this$0:Lcom/android/calculator2/Calculator;

    check-cast p2, Lcom/android/calculator2/CalculatorService$CalculatorServiceBinder;

    invoke-virtual {p2}, Lcom/android/calculator2/CalculatorService$CalculatorServiceBinder;->getService()Lcom/android/calculator2/CalculatorService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/calculator2/Calculator;->access$1802(Lcom/android/calculator2/Calculator;Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorService;

    .line 2690
    iget-object p1, p0, Lcom/android/calculator2/Calculator$16;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {p1}, Lcom/android/calculator2/Calculator;->access$1800(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/CalculatorService;

    move-result-object p1

    iget-object p0, p0, Lcom/android/calculator2/Calculator$16;->this$0:Lcom/android/calculator2/Calculator;

    invoke-virtual {p1, p0}, Lcom/android/calculator2/CalculatorService;->setCloseCallback(Lcom/android/calculator2/CalculatorService$notifyFullScreenCalculatorCallback;)V

    const-string p0, "Calculator"

    const-string p1, "Aaron: onServiceConnected()."

    .line 2691
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "Calculator"

    const-string v0, "Aaron: onServiceDisconnected()."

    .line 2696
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    iget-object p0, p0, Lcom/android/calculator2/Calculator$16;->this$0:Lcom/android/calculator2/Calculator;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/calculator2/Calculator;->access$1802(Lcom/android/calculator2/Calculator;Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorService;

    return-void
.end method
