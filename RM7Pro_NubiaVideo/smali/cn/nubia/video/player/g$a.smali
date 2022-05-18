.class Lcn/nubia/video/player/g$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/g;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/g;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/g$a;->a:Lcn/nubia/video/player/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/g$a;->a:Lcn/nubia/video/player/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/video/player/g;->a(Lcn/nubia/video/player/g;Z)Z

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/g$a;->a:Lcn/nubia/video/player/g;

    invoke-static {v0}, Lcn/nubia/video/player/g;->b(Lcn/nubia/video/player/g;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcn/nubia/video/mediajni/VideoItem;

    invoke-direct {v1}, Lcn/nubia/video/mediajni/VideoItem;-><init>()V

    .line 4
    iget-object v2, p0, Lcn/nubia/video/player/g$a;->a:Lcn/nubia/video/player/g;

    invoke-static {v2}, Lcn/nubia/video/player/g;->c(Lcn/nubia/video/player/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/video/mediajni/VideoItem;->setDataSource(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 5
    iget-object v2, p0, Lcn/nubia/video/player/g$a;->a:Lcn/nubia/video/player/g;

    invoke-static {v2}, Lcn/nubia/video/player/g;->d(Lcn/nubia/video/player/g;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/video/mediajni/VideoItem;->snapShot(Ljava/lang/String;J)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    :try_start_0
    iget-object v3, p0, Lcn/nubia/video/player/g$a;->a:Lcn/nubia/video/player/g;

    invoke-virtual {v1}, Lcn/nubia/video/mediajni/VideoItem;->getDegrees()I

    move-result v4

    invoke-static {v3, v4}, Lcn/nubia/video/player/g;->e(Lcn/nubia/video/player/g;I)I

    move-result v3

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 9
    new-instance v6, Landroid/media/ExifInterface;

    invoke-direct {v6, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v0, "Orientation"

    .line 10
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    .line 12
    invoke-static {v0, v3}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-string v3, "DateTimeOriginal"

    const-string v4, "yyyy:MM:dd HH:mm:ss"

    .line 13
    invoke-static {v4}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {v6, v3, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v6}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 16
    iget-object v0, p0, Lcn/nubia/video/player/g$a;->a:Lcn/nubia/video/player/g;

    invoke-static {v0}, Lcn/nubia/video/player/g;->f(Lcn/nubia/video/player/g;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :catch_0
    iget-object v0, p0, Lcn/nubia/video/player/g$a;->a:Lcn/nubia/video/player/g;

    invoke-static {v0}, Lcn/nubia/video/player/g;->g(Lcn/nubia/video/player/g;)Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/g$a;->a:Lcn/nubia/video/player/g;

    invoke-static {v0}, Lcn/nubia/video/player/g;->h(Lcn/nubia/video/player/g;)V

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcn/nubia/video/mediajni/VideoItem;->release()V

    .line 20
    iget-object v0, p0, Lcn/nubia/video/player/g$a;->a:Lcn/nubia/video/player/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/video/player/g;->a(Lcn/nubia/video/player/g;Z)Z

    return-void
.end method
