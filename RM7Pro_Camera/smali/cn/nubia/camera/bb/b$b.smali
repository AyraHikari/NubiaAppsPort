.class Lcn/nubia/camera/bb/b$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/bb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcn/nubia/camera/bb/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/b;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 235
    :try_start_0
    iget-object v3, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v3}, Lcn/nubia/camera/bb/b;->c(Lcn/nubia/camera/bb/b;)Ljava/lang/Thread;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 236
    iget-object v3, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v3}, Lcn/nubia/camera/bb/b;->c(Lcn/nubia/camera/bb/b;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V

    .line 237
    iget-object v3, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v3, v2}, Lcn/nubia/camera/bb/b;->a(Lcn/nubia/camera/bb/b;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 239
    :cond_0
    iget-object v3, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v3}, Lcn/nubia/camera/bb/b;->d(Lcn/nubia/camera/bb/b;)Lcn/nubia/camera/bb/u;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v6}, Lcn/nubia/camera/bb/b;->e(Lcn/nubia/camera/bb/b;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-virtual {v6}, Lcn/nubia/camera/bb/b;->p()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcn/nubia/camera/bb/u;->f:J

    .line 240
    iget-object v3, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v3}, Lcn/nubia/camera/bb/b;->f(Lcn/nubia/camera/bb/b;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 241
    iget-object v3, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v3}, Lcn/nubia/camera/bb/b;->f(Lcn/nubia/camera/bb/b;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 242
    iget-object v3, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v3}, Lcn/nubia/camera/bb/b;->f(Lcn/nubia/camera/bb/b;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V

    .line 243
    iput v0, p0, Lcn/nubia/camera/bb/b$b;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "BaseVideoRecordManagerImpl"

    const-string v5, "stopVideoRecording stop fail"

    .line 245
    invoke-static {v4, v5, v3}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    iget-object v3, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v3}, Lcn/nubia/camera/bb/b;->d(Lcn/nubia/camera/bb/b;)Lcn/nubia/camera/bb/u;

    move-result-object v3

    iget-object v3, v3, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 247
    iget-object v3, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-virtual {v3}, Lcn/nubia/camera/bb/b;->t()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v4}, Lcn/nubia/camera/bb/b;->d(Lcn/nubia/camera/bb/b;)Lcn/nubia/camera/bb/u;

    move-result-object v4

    iget-object v4, v4, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    .line 248
    iget-object v3, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v3}, Lcn/nubia/camera/bb/b;->d(Lcn/nubia/camera/bb/b;)Lcn/nubia/camera/bb/u;

    move-result-object v3

    iput-object v2, v3, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    .line 250
    :cond_1
    iput v1, p0, Lcn/nubia/camera/bb/b$b;->a:I

    .line 253
    :goto_0
    iget-object v3, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v3}, Lcn/nubia/camera/bb/b;->d(Lcn/nubia/camera/bb/b;)Lcn/nubia/camera/bb/u;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 254
    iget-object v3, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-virtual {v3}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v3}, Lcn/nubia/camera/bb/b;->g(Lcn/nubia/camera/bb/b;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v4}, Lcn/nubia/camera/bb/b;->d(Lcn/nubia/camera/bb/b;)Lcn/nubia/camera/bb/u;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/camera/bb/ad;->a(Landroid/content/Context;Lcn/nubia/camera/bb/u;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    iput v1, p0, Lcn/nubia/camera/bb/b$b;->a:I

    .line 256
    iget-object v1, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v1}, Lcn/nubia/camera/bb/b;->d(Lcn/nubia/camera/bb/b;)Lcn/nubia/camera/bb/u;

    move-result-object v1

    iput-object v2, v1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    .line 260
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-virtual {v1}, Lcn/nubia/camera/bb/b;->k()V

    .line 262
    iget v1, p0, Lcn/nubia/camera/bb/b$b;->a:I

    if-nez v1, :cond_3

    .line 263
    iget-object v1, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v1}, Lcn/nubia/camera/bb/b;->d(Lcn/nubia/camera/bb/b;)Lcn/nubia/camera/bb/u;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/nubia/camera/bb/b;->b(Lcn/nubia/camera/bb/u;)V

    .line 264
    iget-object v1, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v1}, Lcn/nubia/camera/bb/b;->h(Lcn/nubia/camera/bb/b;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v5}, Lcn/nubia/camera/bb/b;->d(Lcn/nubia/camera/bb/b;)Lcn/nubia/camera/bb/u;

    move-result-object v5

    iget-wide v5, v5, Lcn/nubia/camera/bb/u;->e:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v6}, Lcn/nubia/camera/bb/b;->d(Lcn/nubia/camera/bb/b;)Lcn/nubia/camera/bb/u;

    move-result-object v6

    iget v6, v6, Lcn/nubia/camera/bb/u;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v6}, Lcn/nubia/camera/bb/b;->d(Lcn/nubia/camera/bb/b;)Lcn/nubia/camera/bb/u;

    move-result-object v6

    iget v6, v6, Lcn/nubia/camera/bb/u;->i:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcn/nubia/camera/ba/g;->a(Lcn/nubia/camera/ad/a;JLjava/lang/String;)V

    .line 267
    :cond_3
    iget-object v1, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v1}, Lcn/nubia/camera/bb/b;->i(Lcn/nubia/camera/bb/b;)Lcn/nubia/k/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/k/a/a;->f()J

    .line 268
    iget-object v1, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/bb/b;->a(I)V

    .line 270
    iget-object v0, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v0}, Lcn/nubia/camera/bb/b;->b(Lcn/nubia/camera/bb/b;)Lcn/nubia/camera/bb/b$c;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/bb/b$b$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/bb/b$b$1;-><init>(Lcn/nubia/camera/bb/b$b;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/b$c;->post(Ljava/lang/Runnable;)Z

    .line 277
    iget-object v0, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v0, v2}, Lcn/nubia/camera/bb/b;->a(Lcn/nubia/camera/bb/b;Lcn/nubia/camera/bb/b$b;)Lcn/nubia/camera/bb/b$b;

    .line 278
    iget-object v0, p0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    invoke-static {v0, v2}, Lcn/nubia/camera/bb/b;->a(Lcn/nubia/camera/bb/b;Lcn/nubia/camera/bb/u;)Lcn/nubia/camera/bb/u;

    return-void
.end method
