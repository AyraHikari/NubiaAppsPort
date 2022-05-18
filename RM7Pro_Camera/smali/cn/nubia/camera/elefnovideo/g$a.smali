.class Lcn/nubia/camera/elefnovideo/g$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/elefnovideo/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcn/nubia/camera/elefnovideo/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/elefnovideo/g;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 272
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v2}, Lcn/nubia/camera/elefnovideo/g;->c(Lcn/nubia/camera/elefnovideo/g;)Lcn/nubia/camera/bb/u;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v5}, Lcn/nubia/camera/elefnovideo/g;->d(Lcn/nubia/camera/elefnovideo/g;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v5, p0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v5}, Lcn/nubia/camera/elefnovideo/g;->e(Lcn/nubia/camera/elefnovideo/g;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcn/nubia/camera/bb/u;->f:J

    .line 273
    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v2}, Lcn/nubia/camera/elefnovideo/g;->a(Lcn/nubia/camera/elefnovideo/g;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 274
    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v2}, Lcn/nubia/camera/elefnovideo/g;->a(Lcn/nubia/camera/elefnovideo/g;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 275
    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v2}, Lcn/nubia/camera/elefnovideo/g;->a(Lcn/nubia/camera/elefnovideo/g;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    const/4 v2, 0x0

    .line 276
    iput v2, p0, Lcn/nubia/camera/elefnovideo/g$a;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "EleFnoVideoRecordManager"

    const-string v4, "stopVideoRecording stop fail"

    .line 278
    invoke-static {v3, v4, v2}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v2}, Lcn/nubia/camera/elefnovideo/g;->c(Lcn/nubia/camera/elefnovideo/g;)Lcn/nubia/camera/bb/u;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v2}, Lcn/nubia/camera/elefnovideo/g;->f(Lcn/nubia/camera/elefnovideo/g;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v3}, Lcn/nubia/camera/elefnovideo/g;->c(Lcn/nubia/camera/elefnovideo/g;)Lcn/nubia/camera/bb/u;

    move-result-object v3

    iget-object v3, v3, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    .line 281
    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v2}, Lcn/nubia/camera/elefnovideo/g;->c(Lcn/nubia/camera/elefnovideo/g;)Lcn/nubia/camera/bb/u;

    move-result-object v2

    iput-object v1, v2, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    .line 283
    :cond_0
    iput v0, p0, Lcn/nubia/camera/elefnovideo/g$a;->a:I

    .line 286
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v2}, Lcn/nubia/camera/elefnovideo/g;->c(Lcn/nubia/camera/elefnovideo/g;)Lcn/nubia/camera/bb/u;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 287
    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v2}, Lcn/nubia/camera/elefnovideo/g;->f(Lcn/nubia/camera/elefnovideo/g;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v3}, Lcn/nubia/camera/elefnovideo/g;->c(Lcn/nubia/camera/elefnovideo/g;)Lcn/nubia/camera/bb/u;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/camera/bb/ad;->a(Landroid/content/Context;Lcn/nubia/camera/bb/u;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    iput v0, p0, Lcn/nubia/camera/elefnovideo/g$a;->a:I

    .line 289
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/g;->c(Lcn/nubia/camera/elefnovideo/g;)Lcn/nubia/camera/bb/u;

    move-result-object v0

    iput-object v1, v0, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    .line 293
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/g;->g(Lcn/nubia/camera/elefnovideo/g;)V

    .line 295
    iget v0, p0, Lcn/nubia/camera/elefnovideo/g$a;->a:I

    if-nez v0, :cond_2

    .line 296
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/g;->c(Lcn/nubia/camera/elefnovideo/g;)Lcn/nubia/camera/bb/u;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/elefnovideo/g;->a(Lcn/nubia/camera/bb/u;)V

    .line 299
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/g;->f(Lcn/nubia/camera/elefnovideo/g;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/k/a/a;->f()J

    .line 300
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    sget-object v2, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    invoke-static {v0, v2}, Lcn/nubia/camera/elefnovideo/g;->a(Lcn/nubia/camera/elefnovideo/g;Lcn/nubia/camera/elefnovideo/l;)V

    .line 302
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/g;->i(Lcn/nubia/camera/elefnovideo/g;)Lcn/nubia/camera/elefnovideo/g$b;

    move-result-object v0

    new-instance v2, Lcn/nubia/camera/elefnovideo/g$a$1;

    invoke-direct {v2, p0}, Lcn/nubia/camera/elefnovideo/g$a$1;-><init>(Lcn/nubia/camera/elefnovideo/g$a;)V

    invoke-virtual {v0, v2}, Lcn/nubia/camera/elefnovideo/g$b;->post(Ljava/lang/Runnable;)Z

    .line 310
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v0, v1}, Lcn/nubia/camera/elefnovideo/g;->a(Lcn/nubia/camera/elefnovideo/g;Lcn/nubia/camera/elefnovideo/g$a;)Lcn/nubia/camera/elefnovideo/g$a;

    return-void
.end method
