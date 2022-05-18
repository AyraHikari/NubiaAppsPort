.class Lcn/nubia/camera/multiRecord/h$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/multiRecord/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcn/nubia/camera/multiRecord/h;


# direct methods
.method constructor <init>(Lcn/nubia/camera/multiRecord/h;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 375
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v2}, Lcn/nubia/camera/multiRecord/h;->d(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/bb/u;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v5}, Lcn/nubia/camera/multiRecord/h;->e(Lcn/nubia/camera/multiRecord/h;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v5}, Lcn/nubia/camera/multiRecord/h;->f(Lcn/nubia/camera/multiRecord/h;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcn/nubia/camera/bb/u;->f:J

    .line 376
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v2}, Lcn/nubia/camera/multiRecord/h;->g(Lcn/nubia/camera/multiRecord/h;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 377
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v2}, Lcn/nubia/camera/multiRecord/h;->g(Lcn/nubia/camera/multiRecord/h;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 378
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v2}, Lcn/nubia/camera/multiRecord/h;->g(Lcn/nubia/camera/multiRecord/h;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    const/4 v2, 0x0

    .line 379
    iput v2, p0, Lcn/nubia/camera/multiRecord/h$a;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "MultiRecordManager"

    const-string v4, "stopVideoRecording stop fail"

    .line 381
    invoke-static {v3, v4, v2}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v2}, Lcn/nubia/camera/multiRecord/h;->d(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/bb/u;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 383
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v2}, Lcn/nubia/camera/multiRecord/h;->h(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v3}, Lcn/nubia/camera/multiRecord/h;->d(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/bb/u;

    move-result-object v3

    iget-object v3, v3, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 384
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v2}, Lcn/nubia/camera/multiRecord/h;->d(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/bb/u;

    move-result-object v2

    iput-object v1, v2, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    .line 386
    :cond_0
    iput v0, p0, Lcn/nubia/camera/multiRecord/h$a;->a:I

    .line 389
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v2}, Lcn/nubia/camera/multiRecord/h;->d(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/bb/u;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 390
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v2}, Lcn/nubia/camera/multiRecord/h;->h(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v3}, Lcn/nubia/camera/multiRecord/h;->d(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/bb/u;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/camera/bb/ad;->a(Landroid/content/Context;Lcn/nubia/camera/bb/u;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    iput v0, p0, Lcn/nubia/camera/multiRecord/h$a;->a:I

    .line 392
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/h;->d(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/bb/u;

    move-result-object v0

    iput-object v1, v0, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    .line 396
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/h;->i(Lcn/nubia/camera/multiRecord/h;)V

    .line 398
    iget v0, p0, Lcn/nubia/camera/multiRecord/h$a;->a:I

    if-nez v0, :cond_2

    .line 399
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/h;->d(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/bb/u;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/camera/multiRecord/h;->a(Lcn/nubia/camera/multiRecord/h;Lcn/nubia/camera/bb/u;)V

    .line 402
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/h;->h(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/k/a/a;->f()J

    .line 403
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    sget-object v2, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    invoke-static {v0, v2}, Lcn/nubia/camera/multiRecord/h;->a(Lcn/nubia/camera/multiRecord/h;Lcn/nubia/camera/elefnovideo/l;)V

    .line 405
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/h;->c(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/multiRecord/h$c;

    move-result-object v0

    new-instance v2, Lcn/nubia/camera/multiRecord/h$a$1;

    invoke-direct {v2, p0}, Lcn/nubia/camera/multiRecord/h$a$1;-><init>(Lcn/nubia/camera/multiRecord/h$a;)V

    invoke-virtual {v0, v2}, Lcn/nubia/camera/multiRecord/h$c;->post(Ljava/lang/Runnable;)Z

    .line 413
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v0, v1}, Lcn/nubia/camera/multiRecord/h;->a(Lcn/nubia/camera/multiRecord/h;Lcn/nubia/camera/multiRecord/h$a;)Lcn/nubia/camera/multiRecord/h$a;

    return-void
.end method
