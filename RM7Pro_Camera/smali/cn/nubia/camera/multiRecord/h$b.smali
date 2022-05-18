.class Lcn/nubia/camera/multiRecord/h$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/multiRecord/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcn/nubia/camera/multiRecord/h;

.field private c:Landroid/media/MediaRecorder;

.field private d:Lcn/nubia/camera/bb/u;


# direct methods
.method constructor <init>(Lcn/nubia/camera/multiRecord/h;Landroid/media/MediaRecorder;Lcn/nubia/camera/bb/u;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/h$b;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 423
    iput-object p2, p0, Lcn/nubia/camera/multiRecord/h$b;->c:Landroid/media/MediaRecorder;

    .line 424
    iput-object p3, p0, Lcn/nubia/camera/multiRecord/h$b;->d:Lcn/nubia/camera/bb/u;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 430
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h$b;->d:Lcn/nubia/camera/bb/u;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/h$b;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v5}, Lcn/nubia/camera/multiRecord/h;->e(Lcn/nubia/camera/multiRecord/h;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/h$b;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v5}, Lcn/nubia/camera/multiRecord/h;->f(Lcn/nubia/camera/multiRecord/h;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcn/nubia/camera/bb/u;->f:J

    .line 431
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h$b;->c:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 432
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h$b;->c:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 433
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h$b;->c:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    const/4 v2, 0x0

    .line 434
    iput v2, p0, Lcn/nubia/camera/multiRecord/h$b;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "MultiRecordManager"

    const-string v4, "stopVideoRecording stop fail"

    .line 436
    invoke-static {v3, v4, v2}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h$b;->d:Lcn/nubia/camera/bb/u;

    iget-object v2, v2, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 438
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h$b;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v2}, Lcn/nubia/camera/multiRecord/h;->h(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/h$b;->d:Lcn/nubia/camera/bb/u;

    iget-object v3, v3, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 439
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h$b;->d:Lcn/nubia/camera/bb/u;

    iput-object v1, v2, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    .line 441
    :cond_0
    iput v0, p0, Lcn/nubia/camera/multiRecord/h$b;->a:I

    .line 444
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h$b;->d:Lcn/nubia/camera/bb/u;

    if-eqz v2, :cond_1

    .line 445
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h$b;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v2}, Lcn/nubia/camera/multiRecord/h;->h(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/h$b;->d:Lcn/nubia/camera/bb/u;

    invoke-static {v2, v3}, Lcn/nubia/camera/bb/ad;->a(Landroid/content/Context;Lcn/nubia/camera/bb/u;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 446
    iput v0, p0, Lcn/nubia/camera/multiRecord/h$b;->a:I

    .line 447
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h$b;->d:Lcn/nubia/camera/bb/u;

    iput-object v1, v0, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    .line 451
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h$b;->d:Lcn/nubia/camera/bb/u;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/u;->a()V

    .line 452
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h$b;->c:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 453
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h$b;->c:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 455
    iget v0, p0, Lcn/nubia/camera/multiRecord/h$b;->a:I

    if-nez v0, :cond_2

    .line 456
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h$b;->b:Lcn/nubia/camera/multiRecord/h;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/h$b;->d:Lcn/nubia/camera/bb/u;

    invoke-static {v0, v1}, Lcn/nubia/camera/multiRecord/h;->a(Lcn/nubia/camera/multiRecord/h;Lcn/nubia/camera/bb/u;)V

    :cond_2
    return-void
.end method
