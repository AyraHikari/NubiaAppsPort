.class Lcom/android/calculator2/CalculatorDisplay$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CalculatorDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/CalculatorDisplay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    .line 70
    iput-object p1, p0, Lcom/android/calculator2/CalculatorDisplay$2;->this$0:Lcom/android/calculator2/CalculatorDisplay;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/android/calculator2/CalculatorDisplay$2;->this$0:Lcom/android/calculator2/CalculatorDisplay;

    iget-object p0, p0, Lcom/android/calculator2/CalculatorDisplay$2;->this$0:Lcom/android/calculator2/CalculatorDisplay;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorDisplay;->access$100(Lcom/android/calculator2/CalculatorDisplay;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/calculator2/CalculatorDisplay;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
