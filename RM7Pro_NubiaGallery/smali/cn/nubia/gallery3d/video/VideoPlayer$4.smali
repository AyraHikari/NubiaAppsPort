.class Lcn/nubia/gallery3d/video/VideoPlayer$4;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;


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

    .line 192
    iput-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$4;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcn/nubia/video/player/common/IMediaPlayer;)V
    .locals 1

    .line 196
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$4;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$502(Lcn/nubia/gallery3d/video/VideoPlayer;I)I

    .line 197
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$4;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$600(Lcn/nubia/gallery3d/video/VideoPlayer;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 199
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$4;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$202(Lcn/nubia/gallery3d/video/VideoPlayer;I)I

    .line 200
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$4;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$300(Lcn/nubia/gallery3d/video/VideoPlayer;)Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$4;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$300(Lcn/nubia/gallery3d/video/VideoPlayer;)Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer$4;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$200(Lcn/nubia/gallery3d/video/VideoPlayer;)I

    move-result v0

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    :cond_0
    return-void
.end method
