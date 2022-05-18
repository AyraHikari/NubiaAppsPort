.class Lcn/nubia/video/player/MovieSnapshot$2;
.super Ljava/lang/Thread;
.source "MovieSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/MovieSnapshot;->startSaveFrameThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/MovieSnapshot;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/MovieSnapshot;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcn/nubia/video/player/MovieSnapshot$2;->this$0:Lcn/nubia/video/player/MovieSnapshot;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 242
    iget-object v0, p0, Lcn/nubia/video/player/MovieSnapshot$2;->this$0:Lcn/nubia/video/player/MovieSnapshot;

    invoke-static {v0}, Lcn/nubia/video/player/MovieSnapshot;->access$200(Lcn/nubia/video/player/MovieSnapshot;)Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcn/nubia/video/player/MovieSnapshot$2;->this$0:Lcn/nubia/video/player/MovieSnapshot;

    iget-object v1, v1, Lcn/nubia/video/player/MovieSnapshot;->mCameraSound:Landroid/media/MediaActionSound;

    if-nez v1, :cond_0

    .line 244
    iget-object v1, p0, Lcn/nubia/video/player/MovieSnapshot$2;->this$0:Lcn/nubia/video/player/MovieSnapshot;

    new-instance v2, Landroid/media/MediaActionSound;

    invoke-direct {v2}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v2, v1, Lcn/nubia/video/player/MovieSnapshot;->mCameraSound:Landroid/media/MediaActionSound;

    .line 246
    :cond_0
    iget-object v1, p0, Lcn/nubia/video/player/MovieSnapshot$2;->this$0:Lcn/nubia/video/player/MovieSnapshot;

    iget-object v1, v1, Lcn/nubia/video/player/MovieSnapshot;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaActionSound;->play(I)V

    .line 247
    new-instance v1, Lcn/nubia/video/editor/VideoItem;

    invoke-direct {v1}, Lcn/nubia/video/editor/VideoItem;-><init>()V

    .line 248
    iget-object v3, p0, Lcn/nubia/video/player/MovieSnapshot$2;->this$0:Lcn/nubia/video/player/MovieSnapshot;

    invoke-static {v3}, Lcn/nubia/video/player/MovieSnapshot;->access$300(Lcn/nubia/video/player/MovieSnapshot;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/nubia/video/editor/VideoItem;->setDataSource(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 250
    iget-object v3, p0, Lcn/nubia/video/player/MovieSnapshot$2;->this$0:Lcn/nubia/video/player/MovieSnapshot;

    invoke-static {v3}, Lcn/nubia/video/player/MovieSnapshot;->access$400(Lcn/nubia/video/player/MovieSnapshot;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lcn/nubia/video/editor/VideoItem;->snapShot(Ljava/lang/String;J)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:///"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    :try_start_0
    iget-object v3, p0, Lcn/nubia/video/player/MovieSnapshot$2;->this$0:Lcn/nubia/video/player/MovieSnapshot;

    invoke-virtual {v1}, Lcn/nubia/video/editor/VideoItem;->getDegrees()I

    move-result v4

    invoke-static {v3, v4}, Lcn/nubia/video/player/MovieSnapshot;->access$500(Lcn/nubia/video/player/MovieSnapshot;I)I

    move-result v3

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 256
    new-instance v6, Landroid/media/ExifInterface;

    invoke-direct {v6, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v7, "Orientation"

    .line 257
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v4

    .line 258
    invoke-static {v3, v4}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    const-string v4, "DateTimeOriginal"

    const-string v5, "yyyy:MM:dd HH:mm:ss"

    .line 261
    invoke-static {v5}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-virtual {v6, v4, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v6}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :catch_0
    iget-object v3, p0, Lcn/nubia/video/player/MovieSnapshot$2;->this$0:Lcn/nubia/video/player/MovieSnapshot;

    invoke-static {v3}, Lcn/nubia/video/player/MovieSnapshot;->access$600(Lcn/nubia/video/player/MovieSnapshot;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v2

    const/4 v0, 0x0

    new-instance v2, Lcn/nubia/video/player/MovieSnapshot$2$1;

    invoke-direct {v2, p0}, Lcn/nubia/video/player/MovieSnapshot$2$1;-><init>(Lcn/nubia/video/player/MovieSnapshot$2;)V

    invoke-static {v3, v4, v0, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0

    .line 279
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcn/nubia/video/player/MovieSnapshot$2$2;

    invoke-direct {v2, p0}, Lcn/nubia/video/player/MovieSnapshot$2$2;-><init>(Lcn/nubia/video/player/MovieSnapshot$2;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcn/nubia/video/editor/VideoItem;->release()V

    return-void
.end method
