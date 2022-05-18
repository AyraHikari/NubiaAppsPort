.class Lcom/zte/camera/d/a$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/camera/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zte/camera/d/a;


# direct methods
.method constructor <init>(Lcom/zte/camera/d/a;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/zte/camera/d/a$1;->a:Lcom/zte/camera/d/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 198
    iget-object p1, p0, Lcom/zte/camera/d/a$1;->a:Lcom/zte/camera/d/a;

    monitor-enter p1

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/zte/camera/d/a$1;->a:Lcom/zte/camera/d/a;

    invoke-virtual {v0}, Lcom/zte/camera/d/a;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 202
    iget-object v0, p0, Lcom/zte/camera/d/a$1;->a:Lcom/zte/camera/d/a;

    invoke-virtual {v0}, Lcom/zte/camera/d/a;->b()V

    .line 203
    iget-object v0, p0, Lcom/zte/camera/d/a$1;->a:Lcom/zte/camera/d/a;

    invoke-virtual {v0}, Lcom/zte/camera/d/a;->a()V

    goto :goto_1

    .line 204
    :cond_0
    iget-object v4, p0, Lcom/zte/camera/d/a$1;->a:Lcom/zte/camera/d/a;

    invoke-static {v4}, Lcom/zte/camera/d/a;->a(Lcom/zte/camera/d/a;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    const/4 v5, 0x1

    if-gez v4, :cond_1

    .line 206
    invoke-virtual {p0, v5}, Lcom/zte/camera/d/a$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/zte/camera/d/a$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 208
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 209
    iget-object v4, p0, Lcom/zte/camera/d/a$1;->a:Lcom/zte/camera/d/a;

    invoke-virtual {v4, v0, v1}, Lcom/zte/camera/d/a;->a(J)V

    .line 212
    iget-object v0, p0, Lcom/zte/camera/d/a$1;->a:Lcom/zte/camera/d/a;

    invoke-static {v0}, Lcom/zte/camera/d/a;->a(Lcom/zte/camera/d/a;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    sub-long/2addr v0, v8

    :goto_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 217
    iget-object v4, p0, Lcom/zte/camera/d/a$1;->a:Lcom/zte/camera/d/a;

    invoke-static {v4}, Lcom/zte/camera/d/a;->a(Lcom/zte/camera/d/a;)J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {p0, v5}, Lcom/zte/camera/d/a$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/zte/camera/d/a$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 222
    :goto_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
