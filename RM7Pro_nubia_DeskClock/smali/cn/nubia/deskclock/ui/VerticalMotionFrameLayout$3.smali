.class Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$3;
.super Ljava/lang/Object;
.source "VerticalMotionFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMin()V
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
    .line 391
    iput-object p1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$3;->this$0:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 394
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$3;->this$0:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$3;->this$0:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->access$500(Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->setTranslationY(F)V

    .line 395
    const-string v0, "VerticalMotionFrameLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "translateToMin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$3;->this$0:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->getTranslationY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$3;->this$0:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 397
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$3;->this$0:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->access$100(Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;)V

    .line 398
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$3;->this$0:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->cancelDragging()V

    .line 399
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$3;->this$0:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->access$200(Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;)Lcn/nubia/deskclock/inter/IMotionDetect;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$3;->this$0:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-interface {v0, v1, v3}, Lcn/nubia/deskclock/inter/IMotionDetect;->onMoveFinish(Landroid/view/View;Z)V

    .line 400
    iget-object v0, p0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout$3;->this$0:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-static {v0, v3}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->access$302(Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;Z)Z

    .line 401
    return-void
.end method
