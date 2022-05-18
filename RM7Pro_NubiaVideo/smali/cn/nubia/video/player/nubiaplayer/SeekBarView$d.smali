.class Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;
.super Ljava/lang/Object;
.source "SourceFile"

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
.field final synthetic a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$200(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$302(Lcn/nubia/video/player/nubiaplayer/SeekBarView;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$800(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/mediajni/VideoItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$800(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/mediajni/VideoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/video/mediajni/VideoItem;->release()V

    .line 5
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$802(Lcn/nubia/video/player/nubiaplayer/SeekBarView;Lcn/nubia/video/mediajni/VideoItem;)Lcn/nubia/video/mediajni/VideoItem;

    :cond_0
    return-void

    .line 6
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$800(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/mediajni/VideoItem;

    move-result-object v1

    if-nez v1, :cond_2

    .line 7
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    new-instance v2, Lcn/nubia/video/mediajni/VideoItem;

    invoke-direct {v2}, Lcn/nubia/video/mediajni/VideoItem;-><init>()V

    invoke-static {v1, v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$802(Lcn/nubia/video/player/nubiaplayer/SeekBarView;Lcn/nubia/video/mediajni/VideoItem;)Lcn/nubia/video/mediajni/VideoItem;

    .line 8
    :cond_2
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$800(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/mediajni/VideoItem;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$200(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/video/mediajni/VideoItem;->setDataSource(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 9
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$800(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/mediajni/VideoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/video/mediajni/VideoItem;->getWidth()I

    move-result v1

    .line 10
    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$800(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/mediajni/VideoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/video/mediajni/VideoItem;->getHeight()I

    move-result v2

    .line 11
    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iget v4, v3, Lcn/nubia/video/player/nubiaplayer/e;->mThumbnailWidth:I

    iget v3, v3, Lcn/nubia/video/player/nubiaplayer/e;->mThumbnailHeight:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v4, v3, v1

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 12
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v5, v1

    mul-float/2addr v2, v3

    float-to-int v6, v2

    .line 13
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$800(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/mediajni/VideoItem;

    move-result-object v4

    const-wide/16 v7, 0x0

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    .line 14
    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$800(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/mediajni/VideoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/video/mediajni/VideoItem;->getDuration()I

    move-result v1

    int-to-long v9, v1

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$500(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)I

    move-result v1

    add-int/lit8 v11, v1, 0x3

    new-instance v12, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d$a;

    invoke-direct {v12, p0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d$a;-><init>(Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;)V

    .line 15
    invoke-virtual/range {v4 .. v12}, Lcn/nubia/video/mediajni/VideoItem;->getThumbnailList(IIJJILcn/nubia/video/mediajni/VideoItem$GetThumbnailListCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :cond_3
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$800(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/mediajni/VideoItem;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 17
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$800(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/mediajni/VideoItem;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 19
    :goto_0
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$800(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/mediajni/VideoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/video/mediajni/VideoItem;->release()V

    .line 20
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v1, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$802(Lcn/nubia/video/player/nubiaplayer/SeekBarView;Lcn/nubia/video/mediajni/VideoItem;)Lcn/nubia/video/mediajni/VideoItem;

    :cond_4
    return-void

    .line 21
    :goto_1
    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$800(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/mediajni/VideoItem;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 22
    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$800(Lcn/nubia/video/player/nubiaplayer/SeekBarView;)Lcn/nubia/video/mediajni/VideoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/video/mediajni/VideoItem;->release()V

    .line 23
    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SeekBarView$d;->a:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-static {v2, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->access$802(Lcn/nubia/video/player/nubiaplayer/SeekBarView;Lcn/nubia/video/mediajni/VideoItem;)Lcn/nubia/video/mediajni/VideoItem;

    .line 24
    :cond_5
    throw v1
.end method
