.class Lcn/nubia/deskclock/ui/ClockView$23;
.super Ljava/lang/Object;
.source "ClockView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/ClockView;->createAlphaAnimator([FLcn/nubia/deskclock/ui/ClockImage;I)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/ClockView;

.field final synthetic val$image:Lcn/nubia/deskclock/ui/ClockImage;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/ClockView;Lcn/nubia/deskclock/ui/ClockImage;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/ClockView;

    .prologue
    .line 659
    iput-object p1, p0, Lcn/nubia/deskclock/ui/ClockView$23;->this$0:Lcn/nubia/deskclock/ui/ClockView;

    iput-object p2, p0, Lcn/nubia/deskclock/ui/ClockView$23;->val$image:Lcn/nubia/deskclock/ui/ClockImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 662
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 663
    .local v0, "alphaValue":F
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView$23;->val$image:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 664
    return-void
.end method
