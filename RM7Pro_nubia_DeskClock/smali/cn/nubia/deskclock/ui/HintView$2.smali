.class Lcn/nubia/deskclock/ui/HintView$2;
.super Ljava/lang/Object;
.source "HintView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/HintView;->setGradientAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/HintView;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/HintView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/HintView;

    .prologue
    .line 143
    iput-object p1, p0, Lcn/nubia/deskclock/ui/HintView$2;->this$0:Lcn/nubia/deskclock/ui/HintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 146
    iget-object v1, p0, Lcn/nubia/deskclock/ui/HintView$2;->this$0:Lcn/nubia/deskclock/ui/HintView;

    .line 147
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 146
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcn/nubia/deskclock/ui/HintView;->access$202(Lcn/nubia/deskclock/ui/HintView;F)F

    .line 148
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView$2;->this$0:Lcn/nubia/deskclock/ui/HintView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/HintView;->invalidate()V

    .line 149
    return-void
.end method
