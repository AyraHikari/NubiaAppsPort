.class final Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/mediaeditorview/simpleeditor/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcn/nubia/video/mediajni/VideoItem;

.field final synthetic c:Lcn/nubia/video/mediaeditorview/simpleeditor/g;


# direct methods
.method public constructor <init>(Lcn/nubia/video/mediaeditorview/simpleeditor/g;Ljava/lang/String;Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->b:Lcn/nubia/video/mediajni/VideoItem;

    .line 3
    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1, p3}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->b(Lcn/nubia/video/mediaeditorview/simpleeditor/g;Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;)Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_1

    .line 2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->g(Lcn/nubia/video/mediaeditorview/simpleeditor/g;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3
    :try_start_1
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->b:Lcn/nubia/video/mediajni/VideoItem;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lcn/nubia/video/mediajni/VideoItem;->release()V

    .line 5
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->b:Lcn/nubia/video/mediajni/VideoItem;

    .line 6
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 7
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->b:Lcn/nubia/video/mediajni/VideoItem;

    if-nez v1, :cond_2

    .line 8
    new-instance v1, Lcn/nubia/video/mediajni/VideoItem;

    invoke-direct {v1}, Lcn/nubia/video/mediajni/VideoItem;-><init>()V

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->b:Lcn/nubia/video/mediajni/VideoItem;

    .line 9
    :cond_2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->b:Lcn/nubia/video/mediajni/VideoItem;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/nubia/video/mediajni/VideoItem;->setDataSource(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 10
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->b:Lcn/nubia/video/mediajni/VideoItem;

    invoke-virtual {v1}, Lcn/nubia/video/mediajni/VideoItem;->getWidth()I

    move-result v1

    .line 11
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->b:Lcn/nubia/video/mediajni/VideoItem;

    invoke-virtual {v2}, Lcn/nubia/video/mediajni/VideoItem;->getHeight()I

    move-result v2

    const/16 v3, 0x32

    const/16 v4, 0x78

    .line 12
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v4, v3, v1

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 13
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v5, v1

    mul-float/2addr v2, v3

    float-to-int v6, v2

    .line 14
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->b:Lcn/nubia/video/mediajni/VideoItem;

    invoke-virtual {v2}, Lcn/nubia/video/mediajni/VideoItem;->getDuration()I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->d(Lcn/nubia/video/mediaeditorview/simpleeditor/g;I)I

    const-string v1, "ThumbnailBitmapLoader"

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startLoadThumb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    invoke-static {v3}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->c(Lcn/nubia/video/mediaeditorview/simpleeditor/g;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->b:Lcn/nubia/video/mediajni/VideoItem;

    const-wide/16 v7, 0x0

    invoke-virtual {v4}, Lcn/nubia/video/mediajni/VideoItem;->getDuration()I

    move-result v1

    int-to-long v9, v1

    const/16 v11, 0x12

    new-instance v12, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c$a;

    invoke-direct {v12, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c$a;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;)V

    invoke-virtual/range {v4 .. v12}, Lcn/nubia/video/mediajni/VideoItem;->getThumbnailList(IIJJILcn/nubia/video/mediajni/VideoItem$GetThumbnailListCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 17
    :cond_3
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->g(Lcn/nubia/video/mediaeditorview/simpleeditor/g;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 18
    :try_start_3
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->b:Lcn/nubia/video/mediajni/VideoItem;

    if-eqz v2, :cond_4

    .line 19
    invoke-virtual {v2}, Lcn/nubia/video/mediajni/VideoItem;->release()V

    .line 20
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->b:Lcn/nubia/video/mediajni/VideoItem;

    .line 21
    :cond_4
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 22
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "ThumbnailBitmapLoader"

    .line 23
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 24
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->g(Lcn/nubia/video/mediaeditorview/simpleeditor/g;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 25
    :try_start_5
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->b:Lcn/nubia/video/mediajni/VideoItem;

    if-eqz v2, :cond_5

    .line 26
    invoke-virtual {v2}, Lcn/nubia/video/mediajni/VideoItem;->release()V

    .line 27
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->b:Lcn/nubia/video/mediajni/VideoItem;

    .line 28
    :cond_5
    monitor-exit v1

    :goto_0
    return-void

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 29
    :goto_1
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    invoke-static {v2}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->g(Lcn/nubia/video/mediaeditorview/simpleeditor/g;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 30
    :try_start_6
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->b:Lcn/nubia/video/mediajni/VideoItem;

    if-eqz v3, :cond_6

    .line 31
    invoke-virtual {v3}, Lcn/nubia/video/mediajni/VideoItem;->release()V

    .line 32
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;->b:Lcn/nubia/video/mediajni/VideoItem;

    .line 33
    :cond_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 34
    throw v1

    :catchall_4
    move-exception v0

    .line 35
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0
.end method
