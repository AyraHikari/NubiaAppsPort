.class Lcn/nubia/video/player/nubiaplayer/SliderBar$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SliderBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/nubiaplayer/SliderBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/nubiaplayer/SliderBar;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/SliderBar;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$1;->this$0:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    .line 410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 412
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$1;->this$0:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-static {v1, v0, p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->access$000(Lcn/nubia/video/player/nubiaplayer/SliderBar;II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 413
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$1;->this$0:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-static {p1, v3}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->access$102(Lcn/nubia/video/player/nubiaplayer/SliderBar;Z)Z

    .line 414
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$1;->this$0:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->access$300(Lcn/nubia/video/player/nubiaplayer/SliderBar;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->access$202(Lcn/nubia/video/player/nubiaplayer/SliderBar;J)J

    .line 415
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$1;->this$0:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->invalidate()V

    .line 416
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$1;->this$0:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->access$400(Lcn/nubia/video/player/nubiaplayer/SliderBar;)Lcn/nubia/video/player/nubiaplayer/SliderBar$Listener;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$1;->this$0:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->access$300(Lcn/nubia/video/player/nubiaplayer/SliderBar;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {p1, v2, v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar$Listener;->onLongPress(II)V

    goto :goto_0

    .line 417
    :cond_0
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$1;->this$0:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-static {v1, v0, p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->access$000(Lcn/nubia/video/player/nubiaplayer/SliderBar;II)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 418
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$1;->this$0:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-static {p1, v3}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->access$102(Lcn/nubia/video/player/nubiaplayer/SliderBar;Z)Z

    .line 419
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$1;->this$0:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->access$500(Lcn/nubia/video/player/nubiaplayer/SliderBar;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->access$202(Lcn/nubia/video/player/nubiaplayer/SliderBar;J)J

    .line 420
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$1;->this$0:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->invalidate()V

    .line 421
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$1;->this$0:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->access$400(Lcn/nubia/video/player/nubiaplayer/SliderBar;)Lcn/nubia/video/player/nubiaplayer/SliderBar$Listener;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$1;->this$0:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->access$500(Lcn/nubia/video/player/nubiaplayer/SliderBar;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {p1, v2, v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar$Listener;->onLongPress(II)V

    :cond_1
    :goto_0
    return-void
.end method
