.class Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$2;
.super Ljava/lang/Object;
.source "VerticalMotionFrameLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMax()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    .prologue
    .line 359
    iput-object p1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$2;->this$0:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 363
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x1

    .line 367
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$2;->this$0:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 368
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$2;->this$0:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->access$100(Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;)V

    .line 369
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$2;->this$0:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->cancelDragging()V

    .line 370
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$2;->this$0:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->access$200(Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;)Lcn/nubia/deskclock/inter/IMotionDetect;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$2;->this$0:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-interface {v0, v1, v3}, Lcn/nubia/deskclock/inter/IMotionDetect;->onMoveFinish(Landroid/view/View;Z)V

    .line 371
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$2;->this$0:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-static {v0, v3}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->access$302(Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;Z)Z

    .line 372
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 376
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 380
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$2;->this$0:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->access$400(Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;)V

    .line 381
    return-void
.end method
