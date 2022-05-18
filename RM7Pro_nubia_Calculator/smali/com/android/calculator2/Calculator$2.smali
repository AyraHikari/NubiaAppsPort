.class Lcom/android/calculator2/Calculator$2;
.super Ljava/lang/Object;
.source "Calculator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


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

    .line 258
    iput-object p1, p0, Lcom/android/calculator2/Calculator$2;->this$0:Lcom/android/calculator2/Calculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/android/calculator2/Calculator$2;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {v0}, Lcom/android/calculator2/Calculator;->access$100(Lcom/android/calculator2/Calculator;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calculator2/Calculator$2;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {v1}, Lcom/android/calculator2/Calculator;->access$000(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/CalculatorFormula;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorFormula;->getRight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 262
    iget-object v0, p0, Lcom/android/calculator2/Calculator$2;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {v0}, Lcom/android/calculator2/Calculator;->access$100(Lcom/android/calculator2/Calculator;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return v2
.end method
