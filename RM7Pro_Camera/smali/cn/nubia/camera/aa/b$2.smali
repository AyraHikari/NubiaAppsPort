.class Lcn/nubia/camera/aa/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aa/b;->i()V
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

    .line 324
    iput-object p1, p0, Lcn/nubia/camera/aa/b$2;->a:Lcn/nubia/camera/aa/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "LivePhoto"

    const-string v1, "onComplete"

    .line 327
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcn/nubia/camera/aa/b$2;->a:Lcn/nubia/camera/aa/b;

    monitor-enter v0

    .line 330
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/aa/b$2;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v1}, Lcn/nubia/camera/aa/b;->f(Lcn/nubia/camera/aa/b;)Lcn/nubia/videogenerator/d/a;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "LivePhoto"

    const-string v2, "LivePhotoGenerator is null"

    .line 332
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v1, p0, Lcn/nubia/camera/aa/b$2;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v1}, Lcn/nubia/camera/aa/b;->e(Lcn/nubia/camera/aa/b;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aa/b$2;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v2}, Lcn/nubia/camera/aa/b;->d(Lcn/nubia/camera/aa/b;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 334
    iget-object v1, p0, Lcn/nubia/camera/aa/b$2;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v1}, Lcn/nubia/camera/aa/b;->e(Lcn/nubia/camera/aa/b;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aa/b$2;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v2}, Lcn/nubia/camera/aa/b;->d(Lcn/nubia/camera/aa/b;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    monitor-exit v0

    return-void

    .line 337
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 339
    :try_start_1
    invoke-virtual {v1}, Lcn/nubia/videogenerator/d/a;->h()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "LivePhoto"

    const-string v3, "stop LivePhotoGenerator fail"

    .line 341
    invoke-static {v2, v3, v0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/aa/b$2;->a:Lcn/nubia/camera/aa/b;

    monitor-enter v2

    .line 344
    :try_start_2
    iget-object v0, p0, Lcn/nubia/camera/aa/b$2;->a:Lcn/nubia/camera/aa/b;

    iget-object v0, v0, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    sget-object v3, Lcn/nubia/camera/aa/b$c;->d:Lcn/nubia/camera/aa/b$c;

    if-eq v0, v3, :cond_1

    const-string v0, "LivePhoto"

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error state "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/aa/b$2;->a:Lcn/nubia/camera/aa/b;

    iget-object v3, v3, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    monitor-exit v2

    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/aa/b$2;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v0}, Lcn/nubia/camera/aa/b;->g(Lcn/nubia/camera/aa/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcn/nubia/camera/aa/b$2;->a:Lcn/nubia/camera/aa/b;

    sget-object v3, Lcn/nubia/camera/aa/b$c;->f:Lcn/nubia/camera/aa/b$c;

    iput-object v3, v0, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    .line 350
    iget-object v0, p0, Lcn/nubia/camera/aa/b$2;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v0}, Lcn/nubia/camera/aa/b;->g(Lcn/nubia/camera/aa/b;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcn/nubia/camera/aa/b;->a(Lcn/nubia/camera/aa/b;Lcn/nubia/videogenerator/d/a;Ljava/lang/String;)V

    goto :goto_1

    .line 353
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/aa/b$2;->a:Lcn/nubia/camera/aa/b;

    sget-object v1, Lcn/nubia/camera/aa/b$c;->e:Lcn/nubia/camera/aa/b$c;

    iput-object v1, v0, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    .line 355
    :goto_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 337
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
