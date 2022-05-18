.class Lcom/android/calculator2/Calculator$5;
.super Ljava/lang/Object;
.source "Calculator.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 291
    iput-object p1, p0, Lcom/android/calculator2/Calculator$5;->this$0:Lcom/android/calculator2/Calculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 302
    iget-object p1, p0, Lcom/android/calculator2/Calculator$5;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {p1}, Lcom/android/calculator2/Calculator;->access$100(Lcom/android/calculator2/Calculator;)Landroid/widget/HorizontalScrollView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 303
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/calculator2/Calculator$5;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {v0}, Lcom/android/calculator2/Calculator;->access$300(Lcom/android/calculator2/Calculator;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 305
    iget-object p0, p0, Lcom/android/calculator2/Calculator$5;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {p0}, Lcom/android/calculator2/Calculator;->access$300(Lcom/android/calculator2/Calculator;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
