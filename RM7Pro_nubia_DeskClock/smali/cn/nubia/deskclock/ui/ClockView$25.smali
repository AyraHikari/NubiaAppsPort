.class Lcn/nubia/deskclock/ui/ClockView$25;
.super Ljava/lang/Object;
.source "ClockView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/ClockView;->createSecHandRunningAnim([F)Landroid/animation/ValueAnimator;
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
    .line 691
    iput-object p1, p0, Lcn/nubia/deskclock/ui/ClockView$25;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 695
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 696
    .local v0, "Value":F
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView$25;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockView;->mSecHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView$25;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    invoke-static {v2}, Lcn/nubia/deskclock/ui/ClockView;->access$300(Lcn/nubia/deskclock/ui/ClockView;)F

    move-result v2

    add-float/2addr v2, v0

    const/high16 v3, 0x40c00000    # 6.0f

    add-float/2addr v2, v3

    iput v2, v1, Lcn/nubia/deskclock/ui/ClockImage;->mRotateAngle:F

    .line 702
    return-void
.end method
