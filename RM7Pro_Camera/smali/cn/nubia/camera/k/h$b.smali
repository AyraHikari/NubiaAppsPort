.class Lcn/nubia/camera/k/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/k/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/h;

.field private b:Lcn/nubia/camera/k/h$a;

.field private c:Lcn/nubia/camera/k/g;

.field private d:[Ljava/lang/String;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcn/nubia/camera/k/h;Lcn/nubia/camera/k/h$a;[Ljava/lang/String;Lcn/nubia/camera/k/g;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 445
    iput-object p1, p0, Lcn/nubia/camera/k/h$b;->c:Lcn/nubia/camera/k/g;

    const/4 p1, 0x0

    .line 447
    iput-boolean p1, p0, Lcn/nubia/camera/k/h$b;->e:Z

    .line 448
    iput-boolean p1, p0, Lcn/nubia/camera/k/h$b;->f:Z

    .line 452
    iput-object p2, p0, Lcn/nubia/camera/k/h$b;->b:Lcn/nubia/camera/k/h$a;

    .line 453
    iput-object p4, p0, Lcn/nubia/camera/k/h$b;->c:Lcn/nubia/camera/k/g;

    .line 454
    iput-object p3, p0, Lcn/nubia/camera/k/h$b;->d:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/k/h$b;)Lcn/nubia/camera/k/g;
    .locals 0

    .line 443
    iget-object p0, p0, Lcn/nubia/camera/k/h$b;->c:Lcn/nubia/camera/k/g;

    return-object p0
.end method

.method private a([Ljava/lang/String;)V
    .locals 8

    .line 517
    iget-object v0, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {v0}, Lcn/nubia/camera/k/h;->i(Lcn/nubia/camera/k/h;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 519
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 521
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 525
    array-length v2, v0

    if-lez v2, :cond_3

    .line 526
    array-length v2, p1

    move v3, v1

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, p1, v3

    .line 528
    array-length v5, v0

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_1

    aget-object v7, v0, v6

    .line 529
    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v4, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_3
    if-nez v4, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v4, v1

    :cond_4
    :goto_4
    if-nez v4, :cond_5

    const-string p1, "CameraOpener"

    const-string v0, "openCameraFail, camera has been invalid"

    .line 540
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object p1, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    sget-object v0, Lcn/nubia/camera/d$a;->a:Lcn/nubia/camera/d$a;

    invoke-static {p1, v0}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/k/h;Lcn/nubia/camera/d$a;)V

    return-void

    .line 545
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    const/16 v2, 0x9c4

    invoke-virtual {v0, v2}, Lcn/nubia/camera/k/h;->a(I)V

    .line 546
    iget-object v0, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {v0}, Lcn/nubia/camera/k/h;->e(Lcn/nubia/camera/k/h;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 547
    :try_start_1
    iget-object v2, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {v2}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/k/h;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcn/nubia/camera/k/h$b;->e:Z

    if-eqz v2, :cond_6

    goto/16 :goto_7

    .line 551
    :cond_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    :goto_5
    array-length v0, p1

    if-ge v1, v0, :cond_8

    const-string v0, "CameraOpener"

    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open camera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :try_start_2
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    aget-object v2, p1, v1

    new-instance v3, Lcn/nubia/camera/k/h$b$1;

    invoke-direct {v3, p0}, Lcn/nubia/camera/k/h$b$1;-><init>(Lcn/nubia/camera/k/h$b;)V

    .line 656
    invoke-static {}, Lcn/nubia/camera/k/h;->A()Lcom/a/a/a/d;

    move-result-object v4

    invoke-interface {v4}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 556
    invoke-virtual {v0, v2, v3, v4}, Lcn/nubia/b/e;->a(Ljava/lang/String;Lcn/nubia/b/d$c;Landroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 659
    iget-object v0, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->a()V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    const-string v2, "CameraOpener"

    const-string v3, "Exception"

    .line 667
    invoke-static {v2, v3, v0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    iget-object v0, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->a()V

    .line 669
    iget-object v0, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    sget-object v2, Lcn/nubia/camera/d$a;->a:Lcn/nubia/camera/d$a;

    invoke-static {v0, v2}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/k/h;Lcn/nubia/camera/d$a;)V

    goto :goto_6

    :catch_2
    move-exception v0

    const-string v2, "CameraOpener"

    const-string v3, "cameraAccessException"

    .line 663
    invoke-static {v2, v3, v0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    iget-object v0, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->a()V

    .line 665
    iget-object v0, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    sget-object v2, Lcn/nubia/camera/d$a;->a:Lcn/nubia/camera/d$a;

    invoke-static {v0, v2}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/k/h;Lcn/nubia/camera/d$a;)V

    :cond_7
    :goto_6
    const-string v0, "CameraOpener"

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open camera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_8
    return-void

    .line 548
    :cond_9
    :goto_7
    :try_start_3
    iget-object p1, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->a()V

    .line 549
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 551
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 474
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/camera/k/h$b;->f:Z

    .line 475
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {v0}, Lcn/nubia/camera/k/h;->e(Lcn/nubia/camera/k/h;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 459
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/k/h$b;->e:Z

    .line 460
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 468
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/k/h$b;->f:Z

    if-nez v0, :cond_0

    .line 469
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 471
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .line 480
    iget-object v0, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {v0}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/k/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-direct {p0}, Lcn/nubia/camera/k/h$b;->c()V

    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {v0}, Lcn/nubia/camera/k/h;->f(Lcn/nubia/camera/k/h;)Z

    move-result v0

    const-string v1, "CameraOpener"

    if-eqz v0, :cond_1

    const-string v0, "delay open camera E"

    .line 486
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {v0}, Lcn/nubia/camera/k/h;->g(Lcn/nubia/camera/k/h;)Landroid/os/ConditionVariable;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    const-string v0, "delay open camera X"

    .line 488
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcn/nubia/camera/k/h;->b(Lcn/nubia/camera/k/h;Z)Z

    .line 493
    iget-object v0, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {v0}, Lcn/nubia/camera/k/h;->h(Lcn/nubia/camera/k/h;)V

    .line 495
    iget-object v0, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {v0}, Lcn/nubia/camera/k/h;->i(Lcn/nubia/camera/k/h;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/b;->a()I

    move-result v0

    sget-object v2, Lcn/nubia/camera/d/b;->a:Lcn/nubia/camera/d/b;

    invoke-virtual {v2}, Lcn/nubia/camera/d/b;->a()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 496
    iget-object v0, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {v0}, Lcn/nubia/camera/k/h;->j(Lcn/nubia/camera/k/h;)V

    .line 498
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->e()V

    .line 499
    iget-object v0, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {v0}, Lcn/nubia/camera/k/h;->i(Lcn/nubia/camera/k/h;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/b;->a:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 501
    iget-object v0, p0, Lcn/nubia/camera/k/h$b;->b:Lcn/nubia/camera/k/h$a;

    if-eqz v0, :cond_3

    .line 502
    invoke-interface {v0}, Lcn/nubia/camera/k/h$a;->a()V

    .line 505
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {v0}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/k/h;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/camera/k/h$b;->e:Z

    if-nez v0, :cond_4

    .line 506
    iget-object v0, p0, Lcn/nubia/camera/k/h$b;->d:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/camera/k/h$b;->a([Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "Camera open fail"

    .line 508
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :goto_0
    invoke-direct {p0}, Lcn/nubia/camera/k/h$b;->c()V

    return-void
.end method
