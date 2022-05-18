.class Lcom/android/calculator2/CalculatorService$2;
.super Ljava/lang/Object;
.source "CalculatorService.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/CalculatorService;->showCopyDialog()V
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

    .line 370
    iput-object p1, p0, Lcom/android/calculator2/CalculatorService$2;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 0

    .line 373
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService$2;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorService;->access$600(Lcom/android/calculator2/CalculatorService;)V

    return-void
.end method
