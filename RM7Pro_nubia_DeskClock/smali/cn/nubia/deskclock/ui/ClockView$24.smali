.class Lcn/nubia/deskclock/ui/ClockView$24;
.super Ljava/lang/Object;
.source "ClockView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/ClockView;->createRotateAnimator([F[FLcn/nubia/deskclock/ui/ClockImage;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/ClockView;

.field final synthetic val$image:Lcn/nubia/deskclock/ui/ClockImage;

.field final synthetic val$temp:F


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/ClockView;Lcn/nubia/deskclock/ui/ClockImage;F)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/ClockView;

    .prologue
    .line 675
    iput-object p1, p0, Lcn/nubia/deskclock/ui/ClockView$24;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    iput-object p2, p0, Lcn/nubia/deskclock/ui/ClockView$24;->val$image:Lcn/nubia/deskclock/ui/ClockImage;

    iput p3, p0, Lcn/nubia/deskclock/ui/ClockView$24;->val$temp:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 678
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 679
    .local v0, "angleValue":F
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView$24;->val$image:Lcn/nubia/deskclock/ui/ClockImage;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView$24;->val$temp:F

    add-float/2addr v2, v0

    iput v2, v1, Lcn/nubia/deskclock/ui/ClockImage;->mRotateAngle:F

    .line 680
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView$24;->val$image:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView$24;->val$image:Lcn/nubia/deskclock/ui/ClockImage;

    iget v2, v2, Lcn/nubia/deskclock/ui/ClockImage;->mRotateAngle:F

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 681
    return-void
.end method
