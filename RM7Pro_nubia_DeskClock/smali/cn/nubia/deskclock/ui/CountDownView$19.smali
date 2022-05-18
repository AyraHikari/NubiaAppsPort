.class Lcn/nubia/deskclock/ui/CountDownView$19;
.super Ljava/lang/Object;
.source "CountDownView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/CountDownView;->startSetTimeAnimator(IIILcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;Lcn/nubia/deskclock/inter/ICountDownCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/CountDownView;

.field final synthetic val$callback:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;

.field final synthetic val$countDownCallback:Lcn/nubia/deskclock/inter/ICountDownCallback;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/CountDownView;Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;Lcn/nubia/deskclock/inter/ICountDownCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 740
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownView$19;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    iput-object p2, p0, Lcn/nubia/deskclock/ui/CountDownView$19;->val$callback:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;

    iput-object p3, p0, Lcn/nubia/deskclock/ui/CountDownView$19;->val$countDownCallback:Lcn/nubia/deskclock/inter/ICountDownCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 761
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 750
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$19;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$2002(Lcn/nubia/deskclock/ui/CountDownView;Z)Z

    .line 751
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$19;->val$callback:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$19;->val$callback:Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;

    invoke-interface {v0}, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;->onAnimationIsEnd()V

    .line 756
    :goto_0
    return-void

    .line 754
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$19;->val$countDownCallback:Lcn/nubia/deskclock/inter/ICountDownCallback;

    invoke-interface {v0}, Lcn/nubia/deskclock/inter/ICountDownCallback;->onAnimationIsEnd()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 766
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 744
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$19;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$2002(Lcn/nubia/deskclock/ui/CountDownView;Z)Z

    .line 745
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$19;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$2102(Lcn/nubia/deskclock/ui/CountDownView;Z)Z

    .line 746
    return-void
.end method
