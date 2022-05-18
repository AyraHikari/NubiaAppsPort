.class Lcn/nubia/deskclock/ui/CountDownView$1;
.super Ljava/lang/Object;
.source "CountDownView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 326
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownView$1;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 329
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 330
    .local v0, "alphaValue":F
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$1;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$000(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/Paint;

    move-result-object v1

    mul-float v2, v0, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 331
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$1;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    mul-float v2, v0, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/ui/CountDownView;->access$102(Lcn/nubia/deskclock/ui/CountDownView;I)I

    .line 332
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$1;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$200(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/Paint;

    move-result-object v1

    mul-float v2, v0, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 333
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$1;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/CountDownView;->invalidate()V

    .line 334
    return-void
.end method
