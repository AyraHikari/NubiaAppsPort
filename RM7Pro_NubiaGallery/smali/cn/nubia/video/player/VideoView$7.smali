.class Lcn/nubia/video/player/VideoView$7;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/VideoView;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/VideoView;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcn/nubia/video/player/VideoView$7;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 325
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$7;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p1, p3}, Lcn/nubia/video/player/VideoView;->access$1402(Lcn/nubia/video/player/VideoView;I)I

    .line 326
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$7;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p1, p4}, Lcn/nubia/video/player/VideoView;->access$1502(Lcn/nubia/video/player/VideoView;I)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 331
    iget-object v0, p0, Lcn/nubia/video/player/VideoView$7;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {v0, p1}, Lcn/nubia/video/player/VideoView;->access$1602(Lcn/nubia/video/player/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 332
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$7;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->access$1000(Lcn/nubia/video/player/VideoView;)I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/video/player/VideoView;->access$1100(Lcn/nubia/video/player/VideoView;I)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 337
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$7;->this$0:Lcn/nubia/video/player/VideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/video/player/VideoView;->access$1602(Lcn/nubia/video/player/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 338
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$7;->this$0:Lcn/nubia/video/player/VideoView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/video/player/VideoView;->setPauseState(Z)V

    .line 339
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$7;->this$0:Lcn/nubia/video/player/VideoView;

    iget-boolean p1, p1, Lcn/nubia/video/player/VideoView;->mPlayerActivityIsPaused:Z

    if-eqz p1, :cond_0

    .line 340
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$7;->this$0:Lcn/nubia/video/player/VideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/video/player/VideoView;->access$1700(Lcn/nubia/video/player/VideoView;Z)V

    .line 341
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$7;->this$0:Lcn/nubia/video/player/VideoView;

    iput-boolean v0, p1, Lcn/nubia/video/player/VideoView;->mPlayerActivityIsPaused:Z

    goto :goto_0

    .line 343
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$7;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getCurrentPosition()I

    move-result v1

    invoke-static {p1, v1}, Lcn/nubia/video/player/VideoView;->access$1802(Lcn/nubia/video/player/VideoView;I)I

    .line 344
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$7;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p1, v0}, Lcn/nubia/video/player/VideoView;->access$1700(Lcn/nubia/video/player/VideoView;Z)V

    :goto_0
    return-void
.end method
