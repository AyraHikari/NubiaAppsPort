.class Lcom/android/common/ui/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/ui/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/ui/a/a;


# direct methods
.method constructor <init>(Lcom/android/common/ui/a/a;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/common/ui/a/a$2;->a:Lcom/android/common/ui/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 42
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/common/ui/a/a$2;->a:Lcom/android/common/ui/a/a;

    invoke-static {v0}, Lcom/android/common/ui/a/a;->b(Lcom/android/common/ui/a/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/android/common/ui/a/a$2;->a:Lcom/android/common/ui/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/common/ui/a/a;->a(Lcom/android/common/ui/a/a;J)J

    .line 45
    iget-object v0, p0, Lcom/android/common/ui/a/a$2;->a:Lcom/android/common/ui/a/a;

    invoke-static {v0}, Lcom/android/common/ui/a/a;->c(Lcom/android/common/ui/a/a;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/common/ui/a/a$2;->a:Lcom/android/common/ui/a/a;

    invoke-static {v2}, Lcom/android/common/ui/a/a;->d(Lcom/android/common/ui/a/a;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/common/ui/a/a$2;->a:Lcom/android/common/ui/a/a;

    invoke-static {v2}, Lcom/android/common/ui/a/a;->e(Lcom/android/common/ui/a/a;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/common/ui/a/a$2;->a:Lcom/android/common/ui/a/a;

    invoke-static {v0}, Lcom/android/common/ui/a/a;->e(Lcom/android/common/ui/a/a;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/common/ui/a/a$2;->a:Lcom/android/common/ui/a/a;

    invoke-static {v3}, Lcom/android/common/ui/a/a;->f(Lcom/android/common/ui/a/a;)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/common/ui/a/a;->b(Lcom/android/common/ui/a/a;J)J

    .line 47
    iget-object v0, p0, Lcom/android/common/ui/a/a$2;->a:Lcom/android/common/ui/a/a;

    invoke-static {v0}, Lcom/android/common/ui/a/a;->g(Lcom/android/common/ui/a/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 48
    iget-object v0, p0, Lcom/android/common/ui/a/a$2;->a:Lcom/android/common/ui/a/a;

    invoke-static {v0}, Lcom/android/common/ui/a/a;->b(Lcom/android/common/ui/a/a;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    :try_start_2
    iget-object v0, p0, Lcom/android/common/ui/a/a$2;->a:Lcom/android/common/ui/a/a;

    invoke-static {v0}, Lcom/android/common/ui/a/a;->h(Lcom/android/common/ui/a/a;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 55
    monitor-exit p0

    goto :goto_0

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

    .line 57
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "MyTimer"

    const-string v2, "MyTimer run failed!"

    .line 62
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
