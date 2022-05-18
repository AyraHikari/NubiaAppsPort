.class Lcn/nubia/deskclock/ui/CountDownView$18;
.super Ljava/lang/Object;
.source "CountDownView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/CountDownView;->startSetTimeAnimator(IIILcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;Lcn/nubia/deskclock/inter/ICountDownCallback;)V
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
    .line 732
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownView$18;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 735
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$18;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcn/nubia/deskclock/ui/CountDownView;->access$1302(Lcn/nubia/deskclock/ui/CountDownView;F)F

    .line 736
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$18;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView$18;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$1300(Lcn/nubia/deskclock/ui/CountDownView;)F

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/ui/CountDownView;->access$1402(Lcn/nubia/deskclock/ui/CountDownView;F)F

    .line 737
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView$18;->this$0:Lcn/nubia/deskclock/ui/CountDownView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/CountDownView;->access$1900(Lcn/nubia/deskclock/ui/CountDownView;)V

    .line 738
    return-void
.end method
