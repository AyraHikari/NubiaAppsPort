.class Lcom/android/calculator2/CalculatorService$CalculatorServiceBinder;
.super Landroid/os/Binder;
.source "CalculatorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/CalculatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalculatorServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/CalculatorService;


# direct methods
.method constructor <init>(Lcom/android/calculator2/CalculatorService;)V
    .locals 0

    .line 996
    iput-object p1, p0, Lcom/android/calculator2/CalculatorService$CalculatorServiceBinder;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/android/calculator2/CalculatorService;
    .locals 0

    .line 998
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService$CalculatorServiceBinder;->this$0:Lcom/android/calculator2/CalculatorService;

    return-object p0
.end method
