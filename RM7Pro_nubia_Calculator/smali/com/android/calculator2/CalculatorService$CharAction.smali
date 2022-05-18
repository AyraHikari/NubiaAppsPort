.class Lcom/android/calculator2/CalculatorService$CharAction;
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
    name = "CharAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/CalculatorService;


# direct methods
.method private constructor <init>(Lcom/android/calculator2/CalculatorService;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/android/calculator2/CalculatorService$CharAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calculator2/CalculatorService;Lcom/android/calculator2/CalculatorService$1;)V
    .locals 0

    .line 532
    invoke-direct {p0, p1}, Lcom/android/calculator2/CalculatorService$CharAction;-><init>(Lcom/android/calculator2/CalculatorService;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/android/calculator2/CalculatorService$CharAction;->this$0:Lcom/android/calculator2/CalculatorService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calculator2/CalculatorService;->access$2600(Lcom/android/calculator2/CalculatorService;Z)V

    .line 536
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a009c

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a00bf

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "CalculatorService"

    const-string v0, "Aaron: click equals button."

    .line 558
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService$CharAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p1}, Lcom/android/calculator2/CalculatorService;->access$2900(Lcom/android/calculator2/CalculatorService;)V

    .line 560
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService$CharAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorService;->access$3000(Lcom/android/calculator2/CalculatorService;)Lcom/android/calculator2/CalculatorService$notifyFullScreenCalculatorCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/calculator2/CalculatorService$notifyFullScreenCalculatorCallback;->notifyClickFloatEqualButton()V

    goto :goto_0

    .line 538
    :cond_1
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService$CharAction;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorService;->access$2800(Lcom/android/calculator2/CalculatorService;)V

    :goto_0
    return-void
.end method
