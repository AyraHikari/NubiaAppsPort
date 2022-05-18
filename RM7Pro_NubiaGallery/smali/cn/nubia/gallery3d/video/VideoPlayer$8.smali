.class Lcn/nubia/gallery3d/video/VideoPlayer$8;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/video/VideoPlayer;->setAudioTrack()V
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

    .line 443
    iput-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$8;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 446
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "index: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$8;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$800(Lcn/nubia/gallery3d/video/VideoPlayer;)I

    move-result p1

    if-eq p2, p1, :cond_1

    .line 448
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$8;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$802(Lcn/nubia/gallery3d/video/VideoPlayer;I)I

    .line 449
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$8;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->pause()V

    .line 450
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$8;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$900(Lcn/nubia/gallery3d/video/VideoPlayer;)Lcn/nubia/video/player/common/IMediaPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/player/common/IMediaPlayer;->getCurrentPosition()I

    move-result p1

    .line 451
    iget-object p2, p0, Lcn/nubia/gallery3d/video/VideoPlayer$8;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p2}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$800(Lcn/nubia/gallery3d/video/VideoPlayer;)I

    move-result p2

    if-ltz p2, :cond_0

    .line 452
    iget-object p2, p0, Lcn/nubia/gallery3d/video/VideoPlayer$8;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p2}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$900(Lcn/nubia/gallery3d/video/VideoPlayer;)Lcn/nubia/video/player/common/IMediaPlayer;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer$8;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$800(Lcn/nubia/gallery3d/video/VideoPlayer;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p2, v0}, Lcn/nubia/video/player/common/IMediaPlayer;->setAudioTrack(I)V

    .line 454
    :cond_0
    iget-object p2, p0, Lcn/nubia/gallery3d/video/VideoPlayer$8;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p2}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$900(Lcn/nubia/gallery3d/video/VideoPlayer;)Lcn/nubia/video/player/common/IMediaPlayer;

    move-result-object p2

    invoke-interface {p2, p1}, Lcn/nubia/video/player/common/IMediaPlayer;->seekTo(I)V

    .line 455
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$8;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->resume()V

    .line 457
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$8;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$1000(Lcn/nubia/gallery3d/video/VideoPlayer;)V

    return-void
.end method
