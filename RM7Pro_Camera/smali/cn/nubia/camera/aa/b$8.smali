.class Lcn/nubia/camera/aa/b$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aa/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aa/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aa/b;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcn/nubia/camera/aa/b$8;->a:Lcn/nubia/camera/aa/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 504
    iget-object v0, p0, Lcn/nubia/camera/aa/b$8;->a:Lcn/nubia/camera/aa/b;

    iget-object v0, v0, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    sget-object v1, Lcn/nubia/camera/aa/b$c;->d:Lcn/nubia/camera/aa/b$c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aa/b$c;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_1

    const-string v0, "LivePhoto"

    const-string v1, "error call stop"

    .line 505
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, p0, Lcn/nubia/camera/aa/b$8;->a:Lcn/nubia/camera/aa/b;

    monitor-enter v0

    .line 508
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/aa/b$8;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v1}, Lcn/nubia/camera/aa/b;->f(Lcn/nubia/camera/aa/b;)Lcn/nubia/videogenerator/d/a;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "LivePhoto"

    const-string v2, "LivePhotoGenerator is null"

    .line 510
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v1, p0, Lcn/nubia/camera/aa/b$8;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v1}, Lcn/nubia/camera/aa/b;->e(Lcn/nubia/camera/aa/b;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aa/b$8;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v2}, Lcn/nubia/camera/aa/b;->d(Lcn/nubia/camera/aa/b;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 512
    iget-object v1, p0, Lcn/nubia/camera/aa/b$8;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v1}, Lcn/nubia/camera/aa/b;->e(Lcn/nubia/camera/aa/b;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aa/b$8;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v2}, Lcn/nubia/camera/aa/b;->d(Lcn/nubia/camera/aa/b;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    monitor-exit v0

    return-void

    .line 515
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :try_start_1
    invoke-virtual {v1}, Lcn/nubia/videogenerator/d/a;->h()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LivePhoto"

    const-string v2, "stop LivePhotoGenerator fail"

    .line 519
    invoke-static {v1, v2, v0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/aa/b$8;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v0}, Lcn/nubia/camera/aa/b;->i(Lcn/nubia/camera/aa/b;)V

    .line 523
    iget-object v0, p0, Lcn/nubia/camera/aa/b$8;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v0}, Lcn/nubia/camera/aa/b;->j(Lcn/nubia/camera/aa/b;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 515
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return-void
.end method
