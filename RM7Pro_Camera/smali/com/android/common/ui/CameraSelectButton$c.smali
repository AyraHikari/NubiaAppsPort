.class Lcom/android/common/ui/CameraSelectButton$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/ui/CameraSelectButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/ui/CameraSelectButton;

.field private b:Landroid/view/SurfaceHolder;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/android/common/ui/CameraSelectButton;Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/android/common/ui/CameraSelectButton$c;->a:Lcom/android/common/ui/CameraSelectButton;

    const-string p1, "UpdateThread"

    .line 532
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 529
    iput-boolean p1, p0, Lcom/android/common/ui/CameraSelectButton$c;->c:Z

    .line 533
    iput-object p2, p0, Lcom/android/common/ui/CameraSelectButton$c;->b:Landroid/view/SurfaceHolder;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 537
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 541
    :try_start_0
    iput-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton$c;->c:Z

    .line 542
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    const-string v0, "CameraSelectButton"

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateThread start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton$c;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton$c;->c:Z

    if-eqz v0, :cond_2

    .line 550
    monitor-enter p0

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton$c;->a:Lcom/android/common/ui/CameraSelectButton;

    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton$c;->b:Landroid/view/SurfaceHolder;

    invoke-static {v0, v1}, Lcom/android/common/ui/CameraSelectButton;->a(Lcom/android/common/ui/CameraSelectButton;Landroid/view/SurfaceHolder;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 554
    :try_start_1
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton$c;->a:Lcom/android/common/ui/CameraSelectButton;

    invoke-static {v0}, Lcom/android/common/ui/CameraSelectButton;->c(Lcom/android/common/ui/CameraSelectButton;)Lcom/android/common/ui/CameraSelectButton$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/CameraSelectButton$b;->sendEmptyMessage(I)Z

    .line 555
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v0, "CameraSelectButton"

    const-string v1, "get interrupted exception"

    .line 558
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 561
    iget-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton$c;->c:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1e

    .line 563
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/common/ui/CameraSelectButton$c;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    const-string v0, "CameraSelectButton"

    const-string v1, "get interrupted exception"

    .line 565
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 560
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2
    const-string v0, "CameraSelectButton"

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateThread exit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton$c;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 570
    iput-object v0, p0, Lcom/android/common/ui/CameraSelectButton$c;->b:Landroid/view/SurfaceHolder;

    return-void
.end method
