.class Lcn/nubia/video/player/VideoView$3;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;


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

    .line 254
    iput-object p1, p0, Lcn/nubia/video/player/VideoView$3;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcn/nubia/video/player/common/IMediaPlayer;)V
    .locals 1

    .line 256
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$3;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->access$500(Lcn/nubia/video/player/VideoView;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 257
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$3;->this$0:Lcn/nubia/video/player/VideoView;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcn/nubia/video/player/VideoView;->access$202(Lcn/nubia/video/player/VideoView;I)I

    .line 258
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$3;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->access$300(Lcn/nubia/video/player/VideoView;)Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$3;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->access$300(Lcn/nubia/video/player/VideoView;)Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/player/VideoView$3;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {v0}, Lcn/nubia/video/player/VideoView;->access$200(Lcn/nubia/video/player/VideoView;)I

    move-result v0

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    :cond_0
    return-void
.end method
