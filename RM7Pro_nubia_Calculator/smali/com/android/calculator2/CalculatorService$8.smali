.class Lcom/android/calculator2/CalculatorService$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CalculatorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/CalculatorService;->slideLeftRightAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/CalculatorService;

.field final synthetic val$left:Z


# direct methods
.method constructor <init>(Lcom/android/calculator2/CalculatorService;Z)V
    .locals 0

    .line 890
    iput-object p1, p0, Lcom/android/calculator2/CalculatorService$8;->this$0:Lcom/android/calculator2/CalculatorService;

    iput-boolean p2, p0, Lcom/android/calculator2/CalculatorService$8;->val$left:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "CalculatorService"

    const-string v0, "Aaron: left/right onAnimationEnd."

    .line 900
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object p0, p0, Lcom/android/calculator2/CalculatorService$8;->this$0:Lcom/android/calculator2/CalculatorService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/calculator2/CalculatorService;->access$3702(Lcom/android/calculator2/CalculatorService;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "CalculatorService"

    const-string v0, "Aaron: left/right onAnimationStart."

    .line 893
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService$8;->this$0:Lcom/android/calculator2/CalculatorService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/calculator2/CalculatorService;->access$3702(Lcom/android/calculator2/CalculatorService;Z)Z

    .line 895
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService$8;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p1}, Lcom/android/calculator2/CalculatorService;->access$1600(Lcom/android/calculator2/CalculatorService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorService$8;->val$left:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/calculator2/CalculatorService;->access$1700()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/calculator2/CalculatorService;->access$1900()I

    move-result v0

    :goto_0
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 896
    iget-object p1, p0, Lcom/android/calculator2/CalculatorService$8;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p1}, Lcom/android/calculator2/CalculatorService;->access$2300(Lcom/android/calculator2/CalculatorService;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/calculator2/CalculatorService$8;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p1}, Lcom/android/calculator2/CalculatorService;->access$2400(Lcom/android/calculator2/CalculatorService;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/calculator2/CalculatorService$8;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {v0}, Lcom/android/calculator2/CalculatorService;->access$2300(Lcom/android/calculator2/CalculatorService;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object p0, p0, Lcom/android/calculator2/CalculatorService$8;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorService;->access$1600(Lcom/android/calculator2/CalculatorService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
