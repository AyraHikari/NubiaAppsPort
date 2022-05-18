.class Lcn/nubia/gallery3d/video/VideoPlayer$1;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/video/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/video/VideoPlayer;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/video/VideoPlayer;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$1;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Lcn/nubia/video/player/common/IMediaPlayer;II)V
    .locals 0

    .line 161
    iget-object p2, p0, Lcn/nubia/gallery3d/video/VideoPlayer$1;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-interface {p1}, Lcn/nubia/video/player/common/IMediaPlayer;->getVideoWidth()I

    move-result p3

    invoke-static {p2, p3}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$002(Lcn/nubia/gallery3d/video/VideoPlayer;I)I

    .line 162
    iget-object p2, p0, Lcn/nubia/gallery3d/video/VideoPlayer$1;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-interface {p1}, Lcn/nubia/video/player/common/IMediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {p2, p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$102(Lcn/nubia/gallery3d/video/VideoPlayer;I)I

    .line 163
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$1;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$000(Lcn/nubia/gallery3d/video/VideoPlayer;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$1;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$100(Lcn/nubia/gallery3d/video/VideoPlayer;)I

    :cond_0
    return-void
.end method
