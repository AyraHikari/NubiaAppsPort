.class Lcn/nubia/deskclock/ui/CountDownView$8;
.super Ljava/lang/Object;
.source "CountDownView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/CountDownView;->startEnterAnimator()V
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
    .line 430
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownView$8;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 445
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 438
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$8;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$702(Lcn/nubia/deskclock/ui/CountDownView;F)F

    .line 439
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$8;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$802(Lcn/nubia/deskclock/ui/CountDownView;Z)Z

    .line 440
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 450
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 433
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$8;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$802(Lcn/nubia/deskclock/ui/CountDownView;Z)Z

    .line 434
    return-void
.end method
