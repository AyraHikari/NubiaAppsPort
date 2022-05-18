.class Lcn/nubia/camera/ag/d$d;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ag/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ag/d;

.field private b:Z

.field private c:J

.field private d:J

.field private e:I


# direct methods
.method constructor <init>(Lcn/nubia/camera/ag/d;J)V
    .locals 2

    .line 881
    iput-object p1, p0, Lcn/nubia/camera/ag/d$d;->a:Lcn/nubia/camera/ag/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 875
    iput-boolean p1, p0, Lcn/nubia/camera/ag/d$d;->b:Z

    const-wide/16 v0, 0x0

    .line 876
    iput-wide v0, p0, Lcn/nubia/camera/ag/d$d;->c:J

    const-wide/16 v0, -0x1

    .line 878
    iput-wide v0, p0, Lcn/nubia/camera/ag/d$d;->d:J

    const/4 p1, 0x0

    .line 879
    iput p1, p0, Lcn/nubia/camera/ag/d$d;->e:I

    .line 882
    iput-wide p2, p0, Lcn/nubia/camera/ag/d$d;->d:J

    return-void
.end method

.method private a(FI)J
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    float-to-long p1, p1

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p1, p2

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 886
    iput-boolean v0, p0, Lcn/nubia/camera/ag/d$d;->b:Z

    .line 887
    monitor-enter p0

    .line 888
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 889
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 8

    .line 910
    iget-wide v0, p0, Lcn/nubia/camera/ag/d$d;->d:J

    long-to-float v0, v0

    iget v1, p0, Lcn/nubia/camera/ag/d$d;->e:I

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/ag/d$d;->a(FI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    return-void

    .line 917
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/nubia/camera/ag/d$d;->c:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v0

    const/4 v3, 0x1

    if-gez v2, :cond_2

    .line 918
    iget-boolean v2, p0, Lcn/nubia/camera/ag/d$d;->b:Z

    if-nez v2, :cond_1

    return-void

    .line 921
    :cond_1
    iget-object v2, p0, Lcn/nubia/camera/ag/d$d;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v2}, Lcn/nubia/camera/ag/d;->u(Lcn/nubia/camera/ag/d;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 922
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcn/nubia/camera/ag/d$d;->c:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    long-to-double v6, v0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 923
    iget-object v4, p0, Lcn/nubia/camera/ag/d$d;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v4}, Lcn/nubia/camera/ag/d;->v(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/ag/d$b;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Lcn/nubia/camera/ag/d$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 926
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x64

    .line 927
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 928
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    .line 930
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 936
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/ag/d$d;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v0}, Lcn/nubia/camera/ag/d;->u(Lcn/nubia/camera/ag/d;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 937
    iget-object v0, p0, Lcn/nubia/camera/ag/d$d;->a:Lcn/nubia/camera/ag/d;

    invoke-static {v0}, Lcn/nubia/camera/ag/d;->v(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/ag/d$b;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcn/nubia/camera/ag/d$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 894
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/ag/d$d;->c:J

    .line 895
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
