.class Landroidx/e/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/Exception;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized a(J)V
    .locals 6

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    if-nez v2, :cond_0

    .line 662
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean p1, p0, Landroidx/e/d$c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 664
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 668
    :cond_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 671
    :goto_1
    iget-boolean v4, p0, Landroidx/e/d$c;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_1

    cmp-long v4, p1, v0

    if-lez v4, :cond_1

    .line 673
    :try_start_3
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 675
    :catch_1
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sub-long/2addr p1, v4

    goto :goto_1

    .line 678
    :cond_1
    iget-boolean p1, p0, Landroidx/e/d$c;->a:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 679
    iput-boolean p1, p0, Landroidx/e/d$c;->a:Z

    .line 680
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "timed out waiting for result"

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/e/d$c;->b:Ljava/lang/Exception;

    .line 682
    :cond_2
    iget-object p1, p0, Landroidx/e/d$c;->b:Ljava/lang/Exception;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez p1, :cond_3

    .line 685
    monitor-exit p0

    return-void

    .line 683
    :cond_3
    :try_start_5
    throw p1

    .line 659
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeoutMs is negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Ljava/lang/Exception;)V
    .locals 1

    monitor-enter p0

    .line 688
    :try_start_0
    iget-boolean v0, p0, Landroidx/e/d$c;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 689
    iput-boolean v0, p0, Landroidx/e/d$c;->a:Z

    .line 690
    iput-object p1, p0, Landroidx/e/d$c;->b:Ljava/lang/Exception;

    .line 691
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
