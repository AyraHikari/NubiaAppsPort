.class Lcn/nubia/video/player/nubiaplayer/SliderBar$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/nubiaplayer/SliderBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/nubiaplayer/SliderBar;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/SliderBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$a;->a:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 3
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$a;->a:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-static {v1, v0, p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->c(Lcn/nubia/video/player/nubiaplayer/SliderBar;II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 4
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$a;->a:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-static {p1, v3}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->d(Lcn/nubia/video/player/nubiaplayer/SliderBar;Z)Z

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$a;->a:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->f(Lcn/nubia/video/player/nubiaplayer/SliderBar;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->e(Lcn/nubia/video/player/nubiaplayer/SliderBar;J)J

    .line 6
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$a;->a:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 7
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$a;->a:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->g(Lcn/nubia/video/player/nubiaplayer/SliderBar;)Lcn/nubia/video/player/nubiaplayer/SliderBar$b;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$a;->a:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->f(Lcn/nubia/video/player/nubiaplayer/SliderBar;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {p1, v2, v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar$b;->b(II)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$a;->a:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-static {v1, v0, p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->c(Lcn/nubia/video/player/nubiaplayer/SliderBar;II)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 9
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$a;->a:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-static {p1, v3}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->d(Lcn/nubia/video/player/nubiaplayer/SliderBar;Z)Z

    .line 10
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$a;->a:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->h(Lcn/nubia/video/player/nubiaplayer/SliderBar;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->e(Lcn/nubia/video/player/nubiaplayer/SliderBar;J)J

    .line 11
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$a;->a:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 12
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$a;->a:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->g(Lcn/nubia/video/player/nubiaplayer/SliderBar;)Lcn/nubia/video/player/nubiaplayer/SliderBar$b;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar$a;->a:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->h(Lcn/nubia/video/player/nubiaplayer/SliderBar;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {p1, v2, v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar$b;->b(II)V

    :cond_1
    :goto_0
    return-void
.end method
