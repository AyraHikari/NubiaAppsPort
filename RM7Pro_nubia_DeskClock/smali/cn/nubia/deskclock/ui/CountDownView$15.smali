.class Lcn/nubia/deskclock/ui/CountDownView$15;
.super Ljava/lang/Object;
.source "CountDownView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 646
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownView$15;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 649
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$15;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcn/nubia/deskclock/ui/CountDownView;->access$1402(Lcn/nubia/deskclock/ui/CountDownView;F)F

    .line 650
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$15;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/CountDownView;->invalidate()V

    .line 651
    return-void
.end method
