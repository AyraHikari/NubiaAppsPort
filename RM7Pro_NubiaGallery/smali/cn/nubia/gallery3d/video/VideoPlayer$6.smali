.class Lcn/nubia/gallery3d/video/VideoPlayer$6;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;


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

    .line 215
    iput-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$6;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/video/player/common/IMediaPlayer;II)Z
    .locals 0

    .line 219
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$6;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$202(Lcn/nubia/gallery3d/video/VideoPlayer;I)I

    .line 220
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$6;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$300(Lcn/nubia/gallery3d/video/VideoPlayer;)Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$6;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$300(Lcn/nubia/gallery3d/video/VideoPlayer;)Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/gallery3d/video/VideoPlayer$6;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p2}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$200(Lcn/nubia/gallery3d/video/VideoPlayer;)I

    move-result p2

    invoke-interface {p1, p2}, Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
