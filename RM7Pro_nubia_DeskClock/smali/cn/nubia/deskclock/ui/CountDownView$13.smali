.class Lcn/nubia/deskclock/ui/CountDownView$13;
.super Ljava/lang/Object;
.source "CountDownView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/CountDownView;->createHandleAlphaAnimator(FFLandroid/animation/TimeInterpolator;I)Landroid/animation/Animator;
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
    .line 599
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownView$13;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 603
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 604
    .local v0, "fra":F
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$13;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/ui/CountDownView;->access$1102(Lcn/nubia/deskclock/ui/CountDownView;I)I

    .line 605
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$13;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$1200(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView$13;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v2}, Lcn/nubia/deskclock/ui/CountDownView;->access$1100(Lcn/nubia/deskclock/ui/CountDownView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 606
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$13;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/CountDownView;->invalidate()V

    .line 607
    return-void
.end method
