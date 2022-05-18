.class Lcn/nubia/deskclock/ui/ClockView$1;
.super Ljava/lang/Object;
.source "ClockView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/ClockView;->startEnterAnimation(IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/ClockView;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/ClockView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/ClockView;

    .prologue
    .line 166
    iput-object p1, p0, Lcn/nubia/deskclock/ui/ClockView$1;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 182
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 183
    .local v0, "runtimeException":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 184
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 177
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView$1;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/ClockView;->startUpdateTime()V

    .line 178
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 173
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 169
    return-void
.end method
