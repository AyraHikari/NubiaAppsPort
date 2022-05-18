.class Lcn/nubia/deskclock/ui/CountDownView$16;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CountDownView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/CountDownView;->startReSetAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/CountDownView;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/CountDownView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 653
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownView$16;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 655
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 656
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$16;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/CountDownView;->access$1600(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$16;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$1500(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/TimerHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/model/TimerHelper;->convertTimeToStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$16;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$1702(Lcn/nubia/deskclock/ui/CountDownView;Z)Z

    .line 659
    return-void
.end method
