.class Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;
.super Ljava/lang/Object;
.source "NubiaPlayerController.java"

# interfaces
.implements Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->setMediaNotify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyMediaState(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->onPause()V

    .line 115
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->updatePlayPause()V

    .line 116
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->onFinish(Z)V

    goto/16 :goto_0

    .line 96
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->updatePlayPause()V

    goto/16 :goto_0

    .line 99
    :cond_2
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->updatePlayPause()V

    .line 100
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->onPlaying()V

    .line 101
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->access$200(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getPlayerState()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 102
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->access$300(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->onPlayPause()V

    goto :goto_0

    .line 106
    :cond_3
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->access$402(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;Z)Z

    .line 107
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->onPrepared()V

    .line 108
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->access$500(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->start()V

    .line 109
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->setTrimStartPos()V

    .line 110
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->setTrimEndPos()V

    .line 111
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->setTrimPos()V

    goto :goto_0

    .line 119
    :cond_4
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->updatePlayPause()V

    .line 120
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->onFinish(Z)V

    goto :goto_0

    .line 93
    :cond_5
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController$1;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;->access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerController;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->show()V

    :cond_6
    :goto_0
    return-void
.end method
