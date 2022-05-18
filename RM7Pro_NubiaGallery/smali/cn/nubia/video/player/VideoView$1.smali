.class Lcn/nubia/video/player/VideoView$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;


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

    .line 231
    iput-object p1, p0, Lcn/nubia/video/player/VideoView$1;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Lcn/nubia/video/player/common/IMediaPlayer;II)V
    .locals 0

    .line 233
    iget-object p2, p0, Lcn/nubia/video/player/VideoView$1;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-interface {p1}, Lcn/nubia/video/player/common/IMediaPlayer;->getVideoWidth()I

    move-result p3

    invoke-static {p2, p3}, Lcn/nubia/video/player/VideoView;->access$002(Lcn/nubia/video/player/VideoView;I)I

    .line 234
    iget-object p2, p0, Lcn/nubia/video/player/VideoView$1;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-interface {p1}, Lcn/nubia/video/player/common/IMediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {p2, p1}, Lcn/nubia/video/player/VideoView;->access$102(Lcn/nubia/video/player/VideoView;I)I

    .line 235
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$1;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->access$000(Lcn/nubia/video/player/VideoView;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/video/player/VideoView$1;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->access$100(Lcn/nubia/video/player/VideoView;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 237
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$1;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->requestLayout()V

    :cond_0
    return-void
.end method
