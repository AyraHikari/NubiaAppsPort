.class public Lcn/nubia/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/b/a$a;,
        Lcn/nubia/b/a$c;,
        Lcn/nubia/b/a$b;
    }
.end annotation


# instance fields
.field protected a:Landroid/hardware/camera2/CameraCaptureSession;

.field protected b:Lcn/nubia/b/d;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:Z

.field private i:I


# direct methods
.method protected constructor <init>(Lcn/nubia/b/d;Landroid/hardware/camera2/CameraCaptureSession;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/b/a;-><init>(Lcn/nubia/b/d;Landroid/hardware/camera2/CameraCaptureSession;ZI)V

    return-void
.end method

.method protected constructor <init>(Lcn/nubia/b/d;Landroid/hardware/camera2/CameraCaptureSession;ZI)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcn/nubia/b/a;->c:Z

    .line 34
    iput-boolean v0, p0, Lcn/nubia/b/a;->d:Z

    .line 35
    iput-boolean v0, p0, Lcn/nubia/b/a;->e:Z

    .line 39
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/b/a;->f:Ljava/lang/Object;

    .line 55
    iput-boolean v0, p0, Lcn/nubia/b/a;->h:Z

    .line 215
    iput v0, p0, Lcn/nubia/b/a;->i:I

    .line 47
    iput-object p1, p0, Lcn/nubia/b/a;->b:Lcn/nubia/b/d;

    .line 48
    iput-object p2, p0, Lcn/nubia/b/a;->a:Landroid/hardware/camera2/CameraCaptureSession;

    .line 49
    iput-boolean p3, p0, Lcn/nubia/b/a;->c:Z

    .line 50
    iput p4, p0, Lcn/nubia/b/a;->i:I

    .line 52
    invoke-virtual {p0}, Lcn/nubia/b/a;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 349
    invoke-static {}, Lcn/nubia/b/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DEBUG] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CaptureSessionProxy"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a(Z)Z
    .locals 3

    .line 320
    iget-object v0, p0, Lcn/nubia/b/a;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/b/a;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p1, "Session has been closed!!!"

    .line 322
    invoke-direct {p0, p1}, Lcn/nubia/b/a;->a(Ljava/lang/String;)V

    .line 323
    monitor-exit v0

    return v2

    .line 325
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/b/a;->e:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    const-string p1, "Session has been paused!!!"

    .line 326
    invoke-direct {p0, p1}, Lcn/nubia/b/a;->a(Ljava/lang/String;)V

    .line 327
    monitor-exit v0

    return v2

    .line 329
    :cond_1
    iget p1, p0, Lcn/nubia/b/a;->g:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcn/nubia/b/a;->g:I

    .line 330
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "guardIn pendingRequestCount: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v2, p0, Lcn/nubia/b/a;->g:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/b/a;->a(Ljava/lang/String;)V

    .line 331
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 332
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private k()V
    .locals 3

    .line 336
    iget-object v0, p0, Lcn/nubia/b/a;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 337
    :try_start_0
    iget v1, p0, Lcn/nubia/b/a;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/nubia/b/a;->g:I

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "guardOut pendingRequestCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/b/a;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/b/a;->a(Ljava/lang/String;)V

    .line 339
    iget v1, p0, Lcn/nubia/b/a;->g:I

    if-gtz v1, :cond_0

    .line 340
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 341
    :try_start_1
    iget-object v1, p0, Lcn/nubia/b/a;->f:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const/4 v1, 0x0

    .line 342
    iput v1, p0, Lcn/nubia/b/a;->g:I

    .line 343
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 345
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I
    .locals 3

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0}, Lcn/nubia/b/a;->a(Z)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "CaptureSessionProxy"

    const-string p2, "capture request is null"

    .line 88
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 93
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/a;->a:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v2, Lcn/nubia/b/a$b;

    invoke-direct {v2, p0, p2}, Lcn/nubia/b/a$b;-><init>(Lcn/nubia/b/a;Lcn/nubia/b/a$a;)V

    invoke-virtual {v0, p1, v2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 97
    :goto_0
    invoke-direct {p0}, Lcn/nubia/b/a;->k()V

    return v1
.end method

.method public a(Ljava/util/List;Lcn/nubia/b/a$a;Landroid/os/Handler;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Lcn/nubia/b/a$a;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0}, Lcn/nubia/b/a;->a(Z)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 112
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    if-nez v2, :cond_1

    const-string p1, "CaptureSessionProxy"

    const-string p2, "setRepeatingBurst request is null"

    .line 114
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 120
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/a;->a:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v2, Lcn/nubia/b/a$b;

    invoke-direct {v2, p0, p2}, Lcn/nubia/b/a$b;-><init>(Lcn/nubia/b/a;Lcn/nubia/b/a$a;)V

    invoke-virtual {v0, p1, v2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 122
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 124
    :goto_0
    invoke-direct {p0}, Lcn/nubia/b/a;->k()V

    return v1
.end method

.method public a()V
    .locals 3

    const/4 v0, 0x1

    .line 61
    invoke-direct {p0, v0}, Lcn/nubia/b/a;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "CaptureSessionProxy"

    const-string v2, "abortCaptures E"

    .line 64
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :try_start_0
    iget-object v2, p0, Lcn/nubia/b/a;->a:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    iput-boolean v0, p0, Lcn/nubia/b/a;->h:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 68
    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :goto_1
    invoke-direct {p0}, Lcn/nubia/b/a;->k()V

    const-string v0, "abortCaptures X"

    .line 73
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 70
    :goto_2
    iput-boolean v0, p0, Lcn/nubia/b/a;->h:Z

    .line 71
    throw v1
.end method

.method public b(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I
    .locals 3

    const/4 v0, 0x0

    .line 272
    invoke-direct {p0, v0}, Lcn/nubia/b/a;->a(Z)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "CaptureSessionProxy"

    const-string p2, "setRepeatingRequest Request is null"

    .line 276
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 281
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/a;->a:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v2, Lcn/nubia/b/a$b;

    invoke-direct {v2, p0, p2}, Lcn/nubia/b/a$b;-><init>(Lcn/nubia/b/a;Lcn/nubia/b/a$a;)V

    invoke-virtual {v0, p1, v2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 283
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 285
    :goto_0
    invoke-direct {p0}, Lcn/nubia/b/a;->k()V

    return v1
.end method

.method public b(Ljava/util/List;Lcn/nubia/b/a$a;Landroid/os/Handler;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Lcn/nubia/b/a$a;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 245
    invoke-direct {p0, v0}, Lcn/nubia/b/a;->a(Z)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 248
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    if-nez v2, :cond_1

    const-string p1, "CaptureSessionProxy"

    const-string p2, "setRepeatingBurst request is null"

    .line 250
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 256
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/a;->a:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v2, Lcn/nubia/b/a$b;

    invoke-direct {v2, p0, p2}, Lcn/nubia/b/a$b;-><init>(Lcn/nubia/b/a;Lcn/nubia/b/a$a;)V

    invoke-virtual {v0, p1, v2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 258
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 260
    :goto_0
    invoke-direct {p0}, Lcn/nubia/b/a;->k()V

    return v1
.end method

.method b()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcn/nubia/b/a;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 130
    :try_start_0
    iput v1, p0, Lcn/nubia/b/a;->g:I

    const/4 v1, 0x1

    .line 131
    iput-boolean v1, p0, Lcn/nubia/b/a;->d:Z

    .line 132
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method c()V
    .locals 4

    .line 136
    iget-object v0, p0, Lcn/nubia/b/a;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    iget v1, p0, Lcn/nubia/b/a;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    .line 139
    :try_start_1
    iget-object v1, p0, Lcn/nubia/b/a;->f:Ljava/lang/Object;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 141
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 144
    iput v1, p0, Lcn/nubia/b/a;->g:I

    const/4 v1, 0x1

    .line 145
    iput-boolean v1, p0, Lcn/nubia/b/a;->e:Z

    .line 146
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method d()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcn/nubia/b/a;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 154
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/b/a;->e:Z

    .line 155
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()Lcn/nubia/b/d;
    .locals 1

    .line 183
    iget-object v0, p0, Lcn/nubia/b/a;->b:Lcn/nubia/b/d;

    return-object v0
.end method

.method public f()Landroid/view/Surface;
    .locals 1

    .line 191
    iget-object v0, p0, Lcn/nubia/b/a;->a:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcn/nubia/b/a;->c:Z

    return v0
.end method

.method public h()I
    .locals 1

    .line 217
    iget v0, p0, Lcn/nubia/b/a;->i:I

    return v0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    .line 294
    invoke-direct {p0, v0}, Lcn/nubia/b/a;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 298
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/a;->a:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 300
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 302
    :goto_0
    invoke-direct {p0}, Lcn/nubia/b/a;->k()V

    return-void
.end method

.method j()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Lcn/nubia/b/a;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/b/a;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
