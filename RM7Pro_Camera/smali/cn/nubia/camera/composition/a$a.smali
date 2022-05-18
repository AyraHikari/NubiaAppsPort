.class Lcn/nubia/camera/composition/a$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/composition/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/composition/a;

.field private b:J

.field private c:J

.field private d:Z


# direct methods
.method constructor <init>(Lcn/nubia/camera/composition/a;)V
    .locals 2

    .line 91
    iput-object p1, p0, Lcn/nubia/camera/composition/a$a;->a:Lcn/nubia/camera/composition/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, 0x0

    .line 93
    iput-wide v0, p0, Lcn/nubia/camera/composition/a$a;->b:J

    .line 94
    iput-wide v0, p0, Lcn/nubia/camera/composition/a$a;->c:J

    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lcn/nubia/camera/composition/a$a;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcn/nubia/camera/composition/a$a;->d:Z

    .line 99
    invoke-virtual {p0}, Lcn/nubia/camera/composition/a$a;->start()V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcn/nubia/camera/composition/a$a;->d:Z

    .line 104
    iget-object v0, p0, Lcn/nubia/camera/composition/a$a;->a:Lcn/nubia/camera/composition/a;

    invoke-static {v0}, Lcn/nubia/camera/composition/a;->a(Lcn/nubia/camera/composition/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/composition/a$a;->a:Lcn/nubia/camera/composition/a;

    invoke-static {v1}, Lcn/nubia/camera/composition/a;->a(Lcn/nubia/camera/composition/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 106
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 11

    const-string v0, "CompositionController"

    const-string v1, "init"

    .line 112
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {}, Lcn/nubia/algorithm/camera/Composition;->init()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string v0, "CompositionController"

    const-string v1, "init failed"

    .line 115
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 119
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcn/nubia/camera/composition/a$a;->d:Z

    if-eqz v2, :cond_6

    .line 120
    iget-object v2, p0, Lcn/nubia/camera/composition/a$a;->a:Lcn/nubia/camera/composition/a;

    invoke-static {v2}, Lcn/nubia/camera/composition/a;->a(Lcn/nubia/camera/composition/a;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 121
    :try_start_0
    iget-object v3, p0, Lcn/nubia/camera/composition/a$a;->a:Lcn/nubia/camera/composition/a;

    invoke-static {v3}, Lcn/nubia/camera/composition/a;->b(Lcn/nubia/camera/composition/a;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcn/nubia/camera/composition/a$a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    .line 123
    :try_start_1
    iget-object v3, p0, Lcn/nubia/camera/composition/a$a;->a:Lcn/nubia/camera/composition/a;

    invoke-static {v3}, Lcn/nubia/camera/composition/a;->a(Lcn/nubia/camera/composition/a;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 125
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 127
    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 129
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 133
    iget-object v4, p0, Lcn/nubia/camera/composition/a$a;->a:Lcn/nubia/camera/composition/a;

    invoke-static {v4}, Lcn/nubia/camera/composition/a;->a(Lcn/nubia/camera/composition/a;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 134
    :try_start_3
    iget-wide v5, p0, Lcn/nubia/camera/composition/a$a;->b:J

    sub-long v5, v2, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v7, 0x21

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 136
    :try_start_4
    iget-object v5, p0, Lcn/nubia/camera/composition/a$a;->a:Lcn/nubia/camera/composition/a;

    invoke-static {v5}, Lcn/nubia/camera/composition/a;->a(Lcn/nubia/camera/composition/a;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v9, p0, Lcn/nubia/camera/composition/a$a;->b:J

    sub-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sub-long/2addr v7, v2

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v2

    .line 138
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 140
    :goto_2
    monitor-exit v4

    goto :goto_0

    .line 142
    :cond_2
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 143
    iput-wide v2, p0, Lcn/nubia/camera/composition/a$a;->b:J

    .line 146
    iget-object v2, p0, Lcn/nubia/camera/composition/a$a;->a:Lcn/nubia/camera/composition/a;

    invoke-static {v2}, Lcn/nubia/camera/composition/a;->c(Lcn/nubia/camera/composition/a;)Lcn/nubia/camera/v/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/v/b;->d()J

    move-result-wide v2

    .line 147
    iget-wide v4, p0, Lcn/nubia/camera/composition/a$a;->c:J

    cmp-long v4, v2, v4

    if-gtz v4, :cond_3

    goto :goto_0

    .line 150
    :cond_3
    iput-wide v2, p0, Lcn/nubia/camera/composition/a$a;->c:J

    .line 152
    iget-object v2, p0, Lcn/nubia/camera/composition/a$a;->a:Lcn/nubia/camera/composition/a;

    invoke-static {v2}, Lcn/nubia/camera/composition/a;->c(Lcn/nubia/camera/composition/a;)Lcn/nubia/camera/v/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/v/b;->e()[B

    move-result-object v4

    .line 153
    iget-object v2, p0, Lcn/nubia/camera/composition/a$a;->a:Lcn/nubia/camera/composition/a;

    invoke-static {v2}, Lcn/nubia/camera/composition/a;->c(Lcn/nubia/camera/composition/a;)Lcn/nubia/camera/v/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/v/b;->g()I

    move-result v5

    .line 154
    iget-object v2, p0, Lcn/nubia/camera/composition/a$a;->a:Lcn/nubia/camera/composition/a;

    invoke-static {v2}, Lcn/nubia/camera/composition/a;->c(Lcn/nubia/camera/composition/a;)Lcn/nubia/camera/v/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/v/b;->h()I

    move-result v6

    .line 155
    iget-object v2, p0, Lcn/nubia/camera/composition/a$a;->a:Lcn/nubia/camera/composition/a;

    invoke-static {v2}, Lcn/nubia/camera/composition/a;->d(Lcn/nubia/camera/composition/a;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/al/c;->c()I

    move-result v7

    if-eqz v4, :cond_5

    .line 156
    array-length v2, v4

    if-eqz v2, :cond_5

    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    array-length v2, v4

    mul-int v3, v5, v6

    mul-int/lit8 v3, v3, 0x4

    if-eq v2, v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x1

    new-array v9, v2, [F

    .line 162
    iget-object v2, p0, Lcn/nubia/camera/composition/a$a;->a:Lcn/nubia/camera/composition/a;

    invoke-static {v2}, Lcn/nubia/camera/composition/a;->e(Lcn/nubia/camera/composition/a;)Lcn/nubia/camera/composition/CompositionView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/composition/CompositionView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/camera/composition/a$a;->a:Lcn/nubia/camera/composition/a;

    invoke-static {v3}, Lcn/nubia/camera/composition/a;->c(Lcn/nubia/camera/composition/a;)Lcn/nubia/camera/v/b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/v/b;->g()I

    move-result v3

    int-to-float v3, v3

    div-float v8, v2, v3

    move-wide v2, v0

    .line 163
    invoke-static/range {v2 .. v9}, Lcn/nubia/algorithm/camera/Composition;->run(J[BIIIF[F)[Lcn/nubia/algorithm/camera/CompositionInfo;

    move-result-object v2

    .line 164
    iget-object v3, p0, Lcn/nubia/camera/composition/a$a;->a:Lcn/nubia/camera/composition/a;

    invoke-static {v3}, Lcn/nubia/camera/composition/a;->e(Lcn/nubia/camera/composition/a;)Lcn/nubia/camera/composition/CompositionView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/camera/composition/CompositionView;->setCompositionInfoArray([Lcn/nubia/algorithm/camera/CompositionInfo;)V

    goto/16 :goto_0

    :cond_5
    :goto_3
    const-string v2, "CompositionController"

    const-string v3, "renderer error"

    .line 157
    invoke-static {v2, v3}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 142
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 129
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 168
    :cond_6
    iget-object v2, p0, Lcn/nubia/camera/composition/a$a;->a:Lcn/nubia/camera/composition/a;

    invoke-static {v2}, Lcn/nubia/camera/composition/a;->e(Lcn/nubia/camera/composition/a;)Lcn/nubia/camera/composition/CompositionView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/camera/composition/CompositionView;->setCompositionInfoArray([Lcn/nubia/algorithm/camera/CompositionInfo;)V

    const-string v2, "CompositionController"

    const-string v3, "release"

    .line 169
    invoke-static {v2, v3}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {v0, v1}, Lcn/nubia/algorithm/camera/Composition;->release(J)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "CompositionController"

    const-string v1, "release failed"

    .line 172
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method
