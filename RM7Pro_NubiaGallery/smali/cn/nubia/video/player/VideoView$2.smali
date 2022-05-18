.class Lcn/nubia/video/player/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;


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

    .line 242
    iput-object p1, p0, Lcn/nubia/video/player/VideoView$2;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcn/nubia/video/player/common/IMediaPlayer;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcn/nubia/video/player/VideoView$2;->this$0:Lcn/nubia/video/player/VideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/nubia/video/player/VideoView;->access$202(Lcn/nubia/video/player/VideoView;I)I

    .line 245
    iget-object v0, p0, Lcn/nubia/video/player/VideoView$2;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {v0}, Lcn/nubia/video/player/VideoView;->access$300(Lcn/nubia/video/player/VideoView;)Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcn/nubia/video/player/VideoView$2;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {v0}, Lcn/nubia/video/player/VideoView;->access$300(Lcn/nubia/video/player/VideoView;)Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/VideoView$2;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {v1}, Lcn/nubia/video/player/VideoView;->access$200(Lcn/nubia/video/player/VideoView;)I

    move-result v1

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/VideoView$2;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-interface {p1}, Lcn/nubia/video/player/common/IMediaPlayer;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/video/player/VideoView;->access$402(Lcn/nubia/video/player/VideoView;I)I

    .line 249
    iget-object v0, p0, Lcn/nubia/video/player/VideoView$2;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-interface {p1}, Lcn/nubia/video/player/common/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/video/player/VideoView;->access$002(Lcn/nubia/video/player/VideoView;I)I

    .line 250
    iget-object v0, p0, Lcn/nubia/video/player/VideoView$2;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-interface {p1}, Lcn/nubia/video/player/common/IMediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcn/nubia/video/player/VideoView;->access$102(Lcn/nubia/video/player/VideoView;I)I

    return-void
.end method
