.class Lcn/nubia/camera/y/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/y/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/y/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/y/g;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcn/nubia/camera/y/g$2;->a:Lcn/nubia/camera/y/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 55
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/y/g$2;->a:Lcn/nubia/camera/y/g;

    invoke-static {v0}, Lcn/nubia/camera/y/g;->b(Lcn/nubia/camera/y/g;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/y/g$2;->a:Lcn/nubia/camera/y/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/y/g;->a(Lcn/nubia/camera/y/g;J)J

    .line 58
    iget-object v0, p0, Lcn/nubia/camera/y/g$2;->a:Lcn/nubia/camera/y/g;

    invoke-static {v0}, Lcn/nubia/camera/y/g;->c(Lcn/nubia/camera/y/g;)J

    move-result-wide v0

    iget-object v2, p0, Lcn/nubia/camera/y/g$2;->a:Lcn/nubia/camera/y/g;

    invoke-static {v2}, Lcn/nubia/camera/y/g;->d(Lcn/nubia/camera/y/g;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/camera/y/g$2;->a:Lcn/nubia/camera/y/g;

    invoke-static {v2}, Lcn/nubia/camera/y/g;->e(Lcn/nubia/camera/y/g;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 59
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 60
    iput v1, v0, Landroid/os/Message;->what:I

    .line 61
    iget-object v1, p0, Lcn/nubia/camera/y/g$2;->a:Lcn/nubia/camera/y/g;

    invoke-static {v1}, Lcn/nubia/camera/y/g;->e(Lcn/nubia/camera/y/g;)I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, v4

    long-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 62
    iget-object v1, p0, Lcn/nubia/camera/y/g$2;->a:Lcn/nubia/camera/y/g;

    invoke-static {v1}, Lcn/nubia/camera/y/g;->f(Lcn/nubia/camera/y/g;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    iget-object v0, p0, Lcn/nubia/camera/y/g$2;->a:Lcn/nubia/camera/y/g;

    invoke-static {v0}, Lcn/nubia/camera/y/g;->g(Lcn/nubia/camera/y/g;)I

    .line 65
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/y/g$2;->a:Lcn/nubia/camera/y/g;

    invoke-static {v0}, Lcn/nubia/camera/y/g;->c(Lcn/nubia/camera/y/g;)J

    move-result-wide v0

    iget-object v2, p0, Lcn/nubia/camera/y/g$2;->a:Lcn/nubia/camera/y/g;

    invoke-static {v2}, Lcn/nubia/camera/y/g;->d(Lcn/nubia/camera/y/g;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/camera/y/g$2;->a:Lcn/nubia/camera/y/g;

    invoke-static {v2}, Lcn/nubia/camera/y/g;->h(Lcn/nubia/camera/y/g;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcn/nubia/camera/y/g$2;->a:Lcn/nubia/camera/y/g;

    invoke-static {v0}, Lcn/nubia/camera/y/g;->h(Lcn/nubia/camera/y/g;)J

    move-result-wide v1

    iget-object v3, p0, Lcn/nubia/camera/y/g$2;->a:Lcn/nubia/camera/y/g;

    invoke-static {v3}, Lcn/nubia/camera/y/g;->i(Lcn/nubia/camera/y/g;)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/y/g;->b(Lcn/nubia/camera/y/g;J)J

    .line 67
    iget-object v0, p0, Lcn/nubia/camera/y/g$2;->a:Lcn/nubia/camera/y/g;

    invoke-static {v0}, Lcn/nubia/camera/y/g;->f(Lcn/nubia/camera/y/g;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 68
    iget-object v0, p0, Lcn/nubia/camera/y/g$2;->a:Lcn/nubia/camera/y/g;

    invoke-static {v0}, Lcn/nubia/camera/y/g;->b(Lcn/nubia/camera/y/g;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_2

    goto :goto_1

    .line 73
    :cond_2
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    :try_start_2
    iget-object v0, p0, Lcn/nubia/camera/y/g$2;->a:Lcn/nubia/camera/y/g;

    invoke-static {v0}, Lcn/nubia/camera/y/g;->j(Lcn/nubia/camera/y/g;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 75
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "MyTimer"

    const-string v2, "timer wait error"

    .line 77
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "MyTimer"

    const-string v2, "MyTimer run failed!"

    .line 82
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_3
    :goto_1
    return-void
.end method
