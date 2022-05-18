.class Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle$1;
.super Ljava/lang/Object;
.source "CountDownView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 999
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle$1;->this$1:Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1002
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1003
    .local v0, "fra":F
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle$1;->this$1:Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$3400(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->setHanleDistance(F)V

    .line 1004
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle$1;->this$1:Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$1900(Lcn/nubia/deskclock/ui/CountDownView;)V

    .line 1005
    return-void
.end method
