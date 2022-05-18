.class Lcom/android/calculator2/Calculator$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Calculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/Calculator;->onClickClear()V
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

    .line 1766
    iput-object p1, p0, Lcom/android/calculator2/Calculator$10;->this$0:Lcom/android/calculator2/Calculator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1769
    iget-object p1, p0, Lcom/android/calculator2/Calculator$10;->this$0:Lcom/android/calculator2/Calculator;

    invoke-virtual {p1}, Lcom/android/calculator2/Calculator;->onClearAnimationEnd()V

    .line 1770
    iget-object p1, p0, Lcom/android/calculator2/Calculator$10;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {p1}, Lcom/android/calculator2/Calculator;->access$800(Lcom/android/calculator2/Calculator;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1771
    iget-object p0, p0, Lcom/android/calculator2/Calculator$10;->this$0:Lcom/android/calculator2/Calculator;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/calculator2/Calculator;->access$802(Lcom/android/calculator2/Calculator;Landroid/animation/Animator;)Landroid/animation/Animator;

    :cond_0
    return-void
.end method
