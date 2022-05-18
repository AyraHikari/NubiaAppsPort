.class Lcn/nubia/camera/zoom/arc/a$8;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/zoom/arc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/zoom/arc/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/zoom/arc/a;)V
    .locals 0

    .line 870
    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/a$8;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 873
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 874
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 876
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$8;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->f(Lcn/nubia/camera/zoom/arc/a;)Lcn/nubia/camera/zoom/arc/ArcZoomView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$8;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->p(Lcn/nubia/camera/zoom/arc/a;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 877
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$8;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->f(Lcn/nubia/camera/zoom/arc/a;)Lcn/nubia/camera/zoom/arc/ArcZoomView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->getZoom()F

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/camera/zoom/arc/a;->c(Lcn/nubia/camera/zoom/arc/a;F)Z

    goto :goto_0

    .line 878
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$8;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->f(Lcn/nubia/camera/zoom/arc/a;)Lcn/nubia/camera/zoom/arc/ArcZoomView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->e()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$8;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->f(Lcn/nubia/camera/zoom/arc/a;)Lcn/nubia/camera/zoom/arc/ArcZoomView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->c()Z

    move-result p1

    if-nez p1, :cond_2

    .line 879
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$8;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->q(Lcn/nubia/camera/zoom/arc/a;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 880
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$8;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->q(Lcn/nubia/camera/zoom/arc/a;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method
