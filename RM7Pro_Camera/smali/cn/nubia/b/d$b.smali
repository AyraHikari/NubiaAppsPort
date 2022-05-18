.class Lcn/nubia/b/d$b;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/b/d;

.field private b:Lcn/nubia/b/a;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/b/m;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/hardware/camera2/params/InputConfiguration;

.field private e:Lcn/nubia/b/a$c;

.field private f:I

.field private g:Landroid/os/Handler;

.field private h:Landroid/hardware/camera2/CaptureRequest;

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcn/nubia/b/d;Ljava/util/List;Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/CaptureRequest;ILcn/nubia/b/a$c;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/b/m;",
            ">;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Landroid/hardware/camera2/CaptureRequest;",
            "I",
            "Lcn/nubia/b/a$c;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 380
    iput-object p1, p0, Lcn/nubia/b/d$b;->a:Lcn/nubia/b/d;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    const/4 p1, 0x0

    .line 370
    iput-boolean p1, p0, Lcn/nubia/b/d$b;->i:Z

    .line 371
    iput-boolean p1, p0, Lcn/nubia/b/d$b;->j:Z

    .line 373
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/b/d$b;->k:Ljava/lang/Object;

    .line 381
    iput-object p2, p0, Lcn/nubia/b/d$b;->c:Ljava/util/List;

    .line 382
    iput-object p3, p0, Lcn/nubia/b/d$b;->d:Landroid/hardware/camera2/params/InputConfiguration;

    .line 383
    iput-object p4, p0, Lcn/nubia/b/d$b;->h:Landroid/hardware/camera2/CaptureRequest;

    .line 384
    iput-object p6, p0, Lcn/nubia/b/d$b;->e:Lcn/nubia/b/a$c;

    .line 385
    iput p5, p0, Lcn/nubia/b/d$b;->f:I

    .line 386
    iput-object p7, p0, Lcn/nubia/b/d$b;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcn/nubia/b/d$b;)Lcn/nubia/b/a;
    .locals 0

    .line 361
    iget-object p0, p0, Lcn/nubia/b/d$b;->b:Lcn/nubia/b/a;

    return-object p0
.end method


# virtual methods
.method public a(Lcn/nubia/b/a$c;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/b/a$c;",
            "Ljava/util/List<",
            "Lcn/nubia/b/m;",
            ">;",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")V"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcn/nubia/b/d$b;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/b/d$b;->j:Z

    if-eqz v1, :cond_0

    .line 426
    monitor-exit v0

    return-void

    .line 428
    :cond_0
    iput-object p2, p0, Lcn/nubia/b/d$b;->c:Ljava/util/List;

    .line 429
    iput-object p3, p0, Lcn/nubia/b/d$b;->h:Landroid/hardware/camera2/CaptureRequest;

    .line 430
    iget-object p2, p0, Lcn/nubia/b/d$b;->e:Lcn/nubia/b/a$c;

    if-eq p2, p1, :cond_1

    iget-boolean p3, p0, Lcn/nubia/b/d$b;->i:Z

    if-nez p3, :cond_1

    .line 431
    invoke-virtual {p2}, Lcn/nubia/b/a$c;->a()V

    .line 433
    :cond_1
    iput-object p1, p0, Lcn/nubia/b/d$b;->e:Lcn/nubia/b/a$c;

    .line 434
    iget-boolean p2, p0, Lcn/nubia/b/d$b;->i:Z

    if-eqz p2, :cond_2

    .line 435
    iget-object p2, p0, Lcn/nubia/b/d$b;->g:Landroid/os/Handler;

    new-instance p3, Lcn/nubia/b/d$b$1;

    invoke-direct {p3, p0, p1}, Lcn/nubia/b/d$b$1;-><init>(Lcn/nubia/b/d$b;Lcn/nubia/b/a$c;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 442
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 390
    iget-object v0, p0, Lcn/nubia/b/d$b;->b:Lcn/nubia/b/a;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Lcn/nubia/b/a;->j()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/b/m;",
            ">;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcn/nubia/b/d$b;->c:Ljava/util/List;

    return-object v0
.end method

.method public c()Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    .line 401
    iget-object v0, p0, Lcn/nubia/b/d$b;->h:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public d()Landroid/hardware/camera2/params/InputConfiguration;
    .locals 1

    .line 404
    iget-object v0, p0, Lcn/nubia/b/d$b;->d:Landroid/hardware/camera2/params/InputConfiguration;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 408
    iget v0, p0, Lcn/nubia/b/d$b;->f:I

    return v0
.end method

.method public f()V
    .locals 1

    .line 412
    iget-object v0, p0, Lcn/nubia/b/d$b;->b:Lcn/nubia/b/a;

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Lcn/nubia/b/a;->c()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 418
    iget-object v0, p0, Lcn/nubia/b/d$b;->b:Lcn/nubia/b/a;

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0}, Lcn/nubia/b/a;->d()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcn/nubia/b/d$b;->k:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 447
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/b/d$b;->j:Z

    const/4 v1, 0x0

    .line 448
    iput-object v1, p0, Lcn/nubia/b/d$b;->e:Lcn/nubia/b/a$c;

    .line 449
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    iget-object v0, p0, Lcn/nubia/b/d$b;->b:Lcn/nubia/b/a;

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0}, Lcn/nubia/b/a;->i()V

    .line 453
    iget-object v0, p0, Lcn/nubia/b/d$b;->b:Lcn/nubia/b/a;

    invoke-virtual {v0}, Lcn/nubia/b/a;->a()V

    .line 455
    iget-object v0, p0, Lcn/nubia/b/d$b;->b:Lcn/nubia/b/a;

    invoke-virtual {v0}, Lcn/nubia/b/a;->b()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 449
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public i()V
    .locals 4

    .line 460
    iget-object v0, p0, Lcn/nubia/b/d$b;->k:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 461
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/b/d$b;->j:Z

    const/4 v1, 0x0

    .line 462
    iput-object v1, p0, Lcn/nubia/b/d$b;->e:Lcn/nubia/b/a$c;

    .line 463
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    iget-object v0, p0, Lcn/nubia/b/d$b;->b:Lcn/nubia/b/a;

    if-eqz v0, :cond_0

    .line 467
    :try_start_1
    invoke-virtual {v0}, Lcn/nubia/b/a;->i()V

    .line 468
    iget-object v0, p0, Lcn/nubia/b/d$b;->b:Lcn/nubia/b/a;

    invoke-virtual {v0}, Lcn/nubia/b/a;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CameraDeviceProxy"

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopRepeating in close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :goto_0
    iget-object v0, p0, Lcn/nubia/b/d$b;->b:Lcn/nubia/b/a;

    invoke-virtual {v0}, Lcn/nubia/b/a;->b()V

    .line 475
    :cond_0
    iget-object v0, p0, Lcn/nubia/b/d$b;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 476
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 477
    check-cast v3, Lcn/nubia/b/m;

    invoke-virtual {v3}, Lcn/nubia/b/m;->c()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 463
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 515
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onActive(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 516
    iget-object p1, p0, Lcn/nubia/b/d$b;->k:Ljava/lang/Object;

    monitor-enter p1

    .line 517
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/d$b;->e:Lcn/nubia/b/a$c;

    if-eqz v0, :cond_0

    .line 518
    iget-object v1, p0, Lcn/nubia/b/d$b;->b:Lcn/nubia/b/a;

    invoke-virtual {v0, v1}, Lcn/nubia/b/a$c;->c(Lcn/nubia/b/a;)V

    .line 520
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 558
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 559
    iget-object p1, p0, Lcn/nubia/b/d$b;->k:Ljava/lang/Object;

    monitor-enter p1

    .line 560
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/d$b;->e:Lcn/nubia/b/a$c;

    if-eqz v0, :cond_0

    .line 561
    iget-object v1, p0, Lcn/nubia/b/d$b;->b:Lcn/nubia/b/a;

    invoke-virtual {v0, v1}, Lcn/nubia/b/a$c;->f(Lcn/nubia/b/a;)V

    .line 563
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 525
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 526
    iget-object p1, p0, Lcn/nubia/b/d$b;->k:Ljava/lang/Object;

    monitor-enter p1

    .line 527
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/d$b;->b:Lcn/nubia/b/a;

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0}, Lcn/nubia/b/a;->b()V

    .line 530
    :cond_0
    iget-object v0, p0, Lcn/nubia/b/d$b;->e:Lcn/nubia/b/a$c;

    if-eqz v0, :cond_1

    .line 531
    iget-object v1, p0, Lcn/nubia/b/d$b;->b:Lcn/nubia/b/a;

    invoke-virtual {v0, v1}, Lcn/nubia/b/a$c;->d(Lcn/nubia/b/a;)V

    .line 533
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 506
    iget-object p1, p0, Lcn/nubia/b/d$b;->k:Ljava/lang/Object;

    monitor-enter p1

    .line 507
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/d$b;->e:Lcn/nubia/b/a$c;

    if-eqz v0, :cond_0

    .line 508
    iget-object v1, p0, Lcn/nubia/b/d$b;->b:Lcn/nubia/b/a;

    invoke-virtual {v0, v1}, Lcn/nubia/b/a$c;->b(Lcn/nubia/b/a;)V

    .line 510
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 6

    .line 484
    iget-object v0, p0, Lcn/nubia/b/d$b;->a:Lcn/nubia/b/d;

    invoke-static {v0}, Lcn/nubia/b/d;->a(Lcn/nubia/b/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcn/nubia/b/d$b;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_0
    iget v1, p0, Lcn/nubia/b/d$b;->f:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 490
    new-instance v1, Lcn/nubia/b/c;

    iget-object v3, p0, Lcn/nubia/b/d$b;->a:Lcn/nubia/b/d;

    invoke-direct {v1, v3, p1}, Lcn/nubia/b/c;-><init>(Lcn/nubia/b/d;Landroid/hardware/camera2/CameraCaptureSession;)V

    iput-object v1, p0, Lcn/nubia/b/d$b;->b:Lcn/nubia/b/a;

    goto :goto_0

    .line 492
    :cond_1
    new-instance v1, Lcn/nubia/b/a;

    iget-object v3, p0, Lcn/nubia/b/d$b;->a:Lcn/nubia/b/d;

    const/4 v4, 0x0

    iget v5, p0, Lcn/nubia/b/d$b;->f:I

    invoke-direct {v1, v3, p1, v4, v5}, Lcn/nubia/b/a;-><init>(Lcn/nubia/b/d;Landroid/hardware/camera2/CameraCaptureSession;ZI)V

    iput-object v1, p0, Lcn/nubia/b/d$b;->b:Lcn/nubia/b/a;

    .line 495
    :goto_0
    iput-boolean v2, p0, Lcn/nubia/b/d$b;->i:Z

    .line 496
    iget-object p1, p0, Lcn/nubia/b/d$b;->e:Lcn/nubia/b/a$c;

    if-eqz p1, :cond_2

    .line 497
    iget-object v1, p0, Lcn/nubia/b/d$b;->b:Lcn/nubia/b/a;

    invoke-virtual {p1, v1}, Lcn/nubia/b/a$c;->a(Lcn/nubia/b/a;)V

    .line 499
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    iget-object p1, p0, Lcn/nubia/b/d$b;->a:Lcn/nubia/b/d;

    invoke-static {p1}, Lcn/nubia/b/d;->b(Lcn/nubia/b/d;)V

    return-void

    :catchall_0
    move-exception p1

    .line 499
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 538
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 539
    iget-object p1, p0, Lcn/nubia/b/d$b;->k:Ljava/lang/Object;

    monitor-enter p1

    .line 540
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/d$b;->e:Lcn/nubia/b/a$c;

    if-eqz v0, :cond_0

    .line 541
    iget-object v1, p0, Lcn/nubia/b/d$b;->b:Lcn/nubia/b/a;

    invoke-virtual {v0, v1}, Lcn/nubia/b/a$c;->e(Lcn/nubia/b/a;)V

    .line 543
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .locals 2

    .line 548
    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V

    .line 549
    iget-object p1, p0, Lcn/nubia/b/d$b;->k:Ljava/lang/Object;

    monitor-enter p1

    .line 550
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/d$b;->e:Lcn/nubia/b/a$c;

    if-eqz v0, :cond_0

    .line 551
    iget-object v1, p0, Lcn/nubia/b/d$b;->b:Lcn/nubia/b/a;

    invoke-virtual {v0, v1, p2}, Lcn/nubia/b/a$c;->a(Lcn/nubia/b/a;Landroid/view/Surface;)V

    .line 553
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
