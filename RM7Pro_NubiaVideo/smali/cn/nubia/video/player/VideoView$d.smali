.class Lcn/nubia/video/player/VideoView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/VideoView;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/VideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/VideoView$d;->a:Lcn/nubia/video/player/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Lcn/nubia/video/mediajni/IMediaPlayer;II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcn/nubia/video/player/VideoView$d;->a:Lcn/nubia/video/player/VideoView;

    invoke-interface {p1}, Lcn/nubia/video/mediajni/IMediaPlayer;->getVideoWidth()I

    move-result p3

    invoke-static {p2, p3}, Lcn/nubia/video/player/VideoView;->b(Lcn/nubia/video/player/VideoView;I)I

    .line 2
    iget-object p2, p0, Lcn/nubia/video/player/VideoView$d;->a:Lcn/nubia/video/player/VideoView;

    invoke-interface {p1}, Lcn/nubia/video/mediajni/IMediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {p2, p1}, Lcn/nubia/video/player/VideoView;->f(Lcn/nubia/video/player/VideoView;I)I

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$d;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->a(Lcn/nubia/video/player/VideoView;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/video/player/VideoView$d;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->c(Lcn/nubia/video/player/VideoView;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$d;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_0
    return-void
.end method
