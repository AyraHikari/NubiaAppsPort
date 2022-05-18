.class Lcn/nubia/video/player/nubiaplayer/SeekBarView$5$1;
.super Ljava/lang/Object;
.source "SeekBarView.java"

# interfaces
.implements Lcn/nubia/video/editor/VideoItem$GetThumbnailListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5$1;->this$1:Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 3

    .line 521
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5$1;->this$1:Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iget-boolean v0, v0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mIsLongPress:Z

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5$1;->this$1:Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iget v0, v0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailWidth:I

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5$1;->this$1:Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iget v1, v1, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailHeight:I

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcn/nubia/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 524
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 525
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5$1;->this$1:Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$1000(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 p2, 0x5

    .line 528
    iput p2, p1, Landroid/os/Message;->what:I

    .line 529
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5$1;->this$1:Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;

    iget-object p2, p2, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {p2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$500(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
