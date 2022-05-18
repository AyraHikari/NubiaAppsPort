.class Lcn/nubia/gallery3d/video/ui/PlayerController$3;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/video/ui/PlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/video/ui/PlayerController;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$3;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 294
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$3;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$200(Lcn/nubia/gallery3d/video/ui/PlayerController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$3;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/video/VideoPlayer;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$1100(Lcn/nubia/gallery3d/video/ui/PlayerController;I)V

    .line 296
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$3;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$900(Lcn/nubia/gallery3d/video/ui/PlayerController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$3;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {v1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$800(Lcn/nubia/gallery3d/video/ui/PlayerController;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$3;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {v2}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/video/VideoPlayer;->getPlaySpeed()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const-wide/16 v2, 0x78

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1f4

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 298
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$3;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$900(Lcn/nubia/gallery3d/video/ui/PlayerController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$3;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {v1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$800(Lcn/nubia/gallery3d/video/ui/PlayerController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
