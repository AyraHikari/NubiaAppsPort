.class Lcn/nubia/video/player/nubiaplayer/SeekBarView$3$1;
.super Ljava/lang/Object;
.source "SeekBarView.java"

# interfaces
.implements Lcn/nubia/video/editor/VideoItem$GetThumbnailListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/nubiaplayer/SeekBarView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/video/player/nubiaplayer/SeekBarView$3;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/SeekBarView$3;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$3$1;->this$1:Lcn/nubia/video/player/nubiaplayer/SeekBarView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 3

    .line 435
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$3$1;->this$1:Lcn/nubia/video/player/nubiaplayer/SeekBarView$3;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$3;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iget v0, v0, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailWidth:I

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$3$1;->this$1:Lcn/nubia/video/player/nubiaplayer/SeekBarView$3;

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/SeekBarView$3;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iget v1, v1, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailHeight:I

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcn/nubia/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 437
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 438
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$3$1;->this$1:Lcn/nubia/video/player/nubiaplayer/SeekBarView$3;

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/SeekBarView$3;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$400(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 p2, 0x4

    .line 441
    iput p2, p1, Landroid/os/Message;->what:I

    .line 442
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$3$1;->this$1:Lcn/nubia/video/player/nubiaplayer/SeekBarView$3;

    iget-object p2, p2, Lcn/nubia/video/player/nubiaplayer/SeekBarView$3;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {p2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$500(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
