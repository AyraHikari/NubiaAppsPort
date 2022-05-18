.class Lcn/nubia/deskclock/ui/StopWatchClockView$9;
.super Ljava/lang/Object;
.source "StopWatchClockView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/StopWatchClockView;->setEnterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/StopWatchClockView;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/StopWatchClockView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/StopWatchClockView;

    .prologue
    .line 312
    iput-object p1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$9;->this$0:Lcn/nubia/deskclock/ui/StopWatchClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 326
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 320
    const-string v0, "StopWatchClockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setEnterAnimation --- onAnimationEnd mAlpha : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$9;->this$0:Lcn/nubia/deskclock/ui/StopWatchClockView;

    invoke-static {v2}, Lcn/nubia/deskclock/ui/StopWatchClockView;->access$200(Lcn/nubia/deskclock/ui/StopWatchClockView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ;; mHandAlpha : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$9;->this$0:Lcn/nubia/deskclock/ui/StopWatchClockView;

    invoke-static {v2}, Lcn/nubia/deskclock/ui/StopWatchClockView;->access$000(Lcn/nubia/deskclock/ui/StopWatchClockView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ;; mMillionSecAlpha : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView$9;->this$0:Lcn/nubia/deskclock/ui/StopWatchClockView;

    invoke-static {v2}, Lcn/nubia/deskclock/ui/StopWatchClockView;->access$100(Lcn/nubia/deskclock/ui/StopWatchClockView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 331
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 316
    return-void
.end method
