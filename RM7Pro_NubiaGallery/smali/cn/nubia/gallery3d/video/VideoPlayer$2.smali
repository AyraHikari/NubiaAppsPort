.class Lcn/nubia/gallery3d/video/VideoPlayer$2;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;


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

    .line 169
    iput-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$2;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcn/nubia/video/player/common/IMediaPlayer;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer$2;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$202(Lcn/nubia/gallery3d/video/VideoPlayer;I)I

    .line 175
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer$2;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$300(Lcn/nubia/gallery3d/video/VideoPlayer;)Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer$2;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$300(Lcn/nubia/gallery3d/video/VideoPlayer;)Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$2;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {v1}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$200(Lcn/nubia/gallery3d/video/VideoPlayer;)I

    move-result v1

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer$2;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-interface {p1}, Lcn/nubia/video/player/common/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$002(Lcn/nubia/gallery3d/video/VideoPlayer;I)I

    .line 179
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer$2;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-interface {p1}, Lcn/nubia/video/player/common/IMediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$102(Lcn/nubia/gallery3d/video/VideoPlayer;I)I

    return-void
.end method
