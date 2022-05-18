.class Lcn/nubia/video/player/VideoView$5$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/VideoView$5;->onError(Lcn/nubia/video/player/common/IMediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/video/player/VideoView$5;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/VideoView$5;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcn/nubia/video/player/VideoView$5$1;->this$1:Lcn/nubia/video/player/VideoView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 300
    iget-object p2, p0, Lcn/nubia/video/player/VideoView$5$1;->this$1:Lcn/nubia/video/player/VideoView$5;

    iget-object p2, p2, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p2}, Lcn/nubia/video/player/VideoView;->access$300(Lcn/nubia/video/player/VideoView;)Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 301
    iget-object p2, p0, Lcn/nubia/video/player/VideoView$5$1;->this$1:Lcn/nubia/video/player/VideoView$5;

    iget-object p2, p2, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p2}, Lcn/nubia/video/player/VideoView;->access$508(Lcn/nubia/video/player/VideoView;)I

    .line 302
    iget-object p2, p0, Lcn/nubia/video/player/VideoView$5$1;->this$1:Lcn/nubia/video/player/VideoView$5;

    iget-object p2, p2, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcn/nubia/video/player/VideoView;->access$202(Lcn/nubia/video/player/VideoView;I)I

    .line 303
    iget-object p2, p0, Lcn/nubia/video/player/VideoView$5$1;->this$1:Lcn/nubia/video/player/VideoView$5;

    iget-object p2, p2, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p2}, Lcn/nubia/video/player/VideoView;->access$300(Lcn/nubia/video/player/VideoView;)Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/video/player/VideoView$5$1;->this$1:Lcn/nubia/video/player/VideoView$5;

    iget-object v0, v0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {v0}, Lcn/nubia/video/player/VideoView;->access$200(Lcn/nubia/video/player/VideoView;)I

    move-result v0

    invoke-interface {p2, v0}, Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    .line 304
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    :cond_0
    return-void
.end method
