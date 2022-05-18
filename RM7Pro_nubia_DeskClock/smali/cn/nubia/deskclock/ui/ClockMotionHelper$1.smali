.class Lcn/nubia/deskclock/ui/ClockMotionHelper$1;
.super Ljava/lang/Object;
.source "ClockMotionHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/ClockMotionHelper;->onMoveCancel(Landroid/view/View;FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/ClockMotionHelper;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/ClockMotionHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/ClockMotionHelper;

    .prologue
    .line 170
    iput-object p1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper$1;->this$0:Lcn/nubia/deskclock/ui/ClockMotionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 173
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 177
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper$1;->this$0:Lcn/nubia/deskclock/ui/ClockMotionHelper;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/ClockMotionHelper;->access$000(Lcn/nubia/deskclock/ui/ClockMotionHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 178
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper$1;->this$0:Lcn/nubia/deskclock/ui/ClockMotionHelper;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/ClockMotionHelper;->access$100(Lcn/nubia/deskclock/ui/ClockMotionHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 179
    const-string v0, "ClockMotionHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd: mCurrentAnalogView.getVisibility() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper$1;->this$0:Lcn/nubia/deskclock/ui/ClockMotionHelper;

    invoke-static {v2}, Lcn/nubia/deskclock/ui/ClockMotionHelper;->access$200(Lcn/nubia/deskclock/ui/ClockMotionHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "ClockMotionHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd: mCurrentAnalogView.getAlpha() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper$1;->this$0:Lcn/nubia/deskclock/ui/ClockMotionHelper;

    invoke-static {v2}, Lcn/nubia/deskclock/ui/ClockMotionHelper;->access$200(Lcn/nubia/deskclock/ui/ClockMotionHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 184
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 187
    return-void
.end method
