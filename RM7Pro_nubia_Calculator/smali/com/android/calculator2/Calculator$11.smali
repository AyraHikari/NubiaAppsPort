.class Lcom/android/calculator2/Calculator$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Calculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/Calculator;->reveal(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/Calculator;

.field final synthetic val$groupOverlay:Landroid/view/ViewGroupOverlay;

.field final synthetic val$revealView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/calculator2/Calculator;Landroid/view/ViewGroupOverlay;Landroid/view/View;)V
    .locals 0

    .line 1910
    iput-object p1, p0, Lcom/android/calculator2/Calculator$11;->this$0:Lcom/android/calculator2/Calculator;

    iput-object p2, p0, Lcom/android/calculator2/Calculator$11;->val$groupOverlay:Landroid/view/ViewGroupOverlay;

    iput-object p3, p0, Lcom/android/calculator2/Calculator$11;->val$revealView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1913
    iget-object p1, p0, Lcom/android/calculator2/Calculator$11;->val$groupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v0, p0, Lcom/android/calculator2/Calculator$11;->val$revealView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 1914
    iget-object p0, p0, Lcom/android/calculator2/Calculator$11;->this$0:Lcom/android/calculator2/Calculator;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/calculator2/Calculator;->access$902(Lcom/android/calculator2/Calculator;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
