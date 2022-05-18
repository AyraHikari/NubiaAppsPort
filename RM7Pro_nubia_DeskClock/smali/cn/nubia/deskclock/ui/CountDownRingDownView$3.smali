.class Lcn/nubia/deskclock/ui/CountDownRingDownView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CountDownRingDownView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/CountDownRingDownView;->createAnimatorSet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/CountDownRingDownView;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/CountDownRingDownView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/CountDownRingDownView;

    .prologue
    .line 92
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView$3;->this$0:Lcn/nubia/deskclock/ui/CountDownRingDownView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 96
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView$3;->this$0:Lcn/nubia/deskclock/ui/CountDownRingDownView;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownRingDownView$3;->this$0:Lcn/nubia/deskclock/ui/CountDownRingDownView;

    .line 97
    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/CountDownRingDownView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 96
    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/CountDownRingDownView;->setPivotY(F)V

    .line 98
    return-void
.end method
