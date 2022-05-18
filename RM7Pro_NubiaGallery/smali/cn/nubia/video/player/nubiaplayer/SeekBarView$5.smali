.class Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;
.super Ljava/lang/Object;
.source "SeekBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/nubiaplayer/SeekBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v0, 0x0

    .line 504
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$100(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 537
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$700(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/editor/VideoItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$700(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/editor/VideoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/video/editor/VideoItem;->release()V

    .line 539
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$702(Lcn/nubia/video/player/nubiaplayer/SeekBarView;Lcn/nubia/video/editor/VideoItem;)Lcn/nubia/video/editor/VideoItem;

    :cond_0
    return-void

    .line 506
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$700(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/editor/VideoItem;

    move-result-object v1

    if-nez v1, :cond_2

    .line 507
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    new-instance v2, Lcn/nubia/video/editor/VideoItem;

    invoke-direct {v2}, Lcn/nubia/video/editor/VideoItem;-><init>()V

    invoke-static {v1, v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$702(Lcn/nubia/video/player/nubiaplayer/SeekBarView;Lcn/nubia/video/editor/VideoItem;)Lcn/nubia/video/editor/VideoItem;

    .line 508
    :cond_2
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$700(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/editor/VideoItem;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$100(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/video/editor/VideoItem;->setDataSource(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 509
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$800(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)V

    .line 510
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$700(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/editor/VideoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/video/editor/VideoItem;->getWidth()I

    move-result v1

    .line 511
    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$700(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/editor/VideoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/video/editor/VideoItem;->getHeight()I

    move-result v2

    .line 512
    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iget v3, v3, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailWidth:I

    iget-object v4, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iget v4, v4, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mThumbnailHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v4, v3, v1

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 513
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v5, v1

    mul-float/2addr v2, v3

    float-to-int v6, v2

    .line 517
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$700(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/editor/VideoItem;

    move-result-object v4

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iget-wide v7, v1, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongStartTime:J

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iget-wide v9, v1, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->mLongEndTime:J

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    .line 518
    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$900(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)I

    move-result v11

    new-instance v12, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5$1;

    invoke-direct {v12, p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5$1;-><init>(Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;)V

    .line 517
    invoke-virtual/range {v4 .. v12}, Lcn/nubia/video/editor/VideoItem;->getThumbnailList(IIJJILcn/nubia/video/editor/VideoItem$GetThumbnailListCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 537
    :cond_3
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$700(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/editor/VideoItem;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 535
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 537
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$700(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/editor/VideoItem;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 538
    :goto_0
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$700(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/editor/VideoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/video/editor/VideoItem;->release()V

    .line 539
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$702(Lcn/nubia/video/player/nubiaplayer/SeekBarView;Lcn/nubia/video/editor/VideoItem;)Lcn/nubia/video/editor/VideoItem;

    :cond_4
    return-void

    .line 537
    :goto_1
    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$700(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/editor/VideoItem;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 538
    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$700(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/editor/VideoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/video/editor/VideoItem;->release()V

    .line 539
    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$5;->this$0:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v2, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$702(Lcn/nubia/video/player/nubiaplayer/SeekBarView;Lcn/nubia/video/editor/VideoItem;)Lcn/nubia/video/editor/VideoItem;

    .line 541
    :cond_5
    throw v1
.end method
