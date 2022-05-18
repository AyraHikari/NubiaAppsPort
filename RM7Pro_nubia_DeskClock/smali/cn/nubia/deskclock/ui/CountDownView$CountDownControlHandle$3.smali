.class Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CountDownView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->startHandleShowAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;

    .prologue
    .line 1021
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle$3;->this$1:Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1024
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1025
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle$3;->this$1:Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$2702(Lcn/nubia/deskclock/ui/CountDownView;Z)Z

    .line 1026
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle$3;->this$1:Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$1702(Lcn/nubia/deskclock/ui/CountDownView;Z)Z

    .line 1027
    return-void
.end method
