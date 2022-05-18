.class public abstract Lcom/zte/camera/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private final c:J

.field private final d:J

.field private e:J

.field private f:Z

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(JJZ)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Lcom/zte/camera/d/a$1;

    invoke-direct {v0, p0}, Lcom/zte/camera/d/a$1;-><init>(Lcom/zte/camera/d/a;)V

    iput-object v0, p0, Lcom/zte/camera/d/a;->g:Landroid/os/Handler;

    .line 61
    iput-wide p1, p0, Lcom/zte/camera/d/a;->b:J

    .line 62
    iput-wide p1, p0, Lcom/zte/camera/d/a;->c:J

    .line 63
    iput-wide p3, p0, Lcom/zte/camera/d/a;->d:J

    .line 64
    iput-boolean p5, p0, Lcom/zte/camera/d/a;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/zte/camera/d/a;)J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/zte/camera/d/a;->d:J

    return-wide v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(J)V
.end method

.method public final b()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/zte/camera/d/a;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final declared-synchronized c()Lcom/zte/camera/d/a;
    .locals 4

    monitor-enter p0

    .line 78
    :try_start_0
    iget-wide v0, p0, Lcom/zte/camera/d/a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/zte/camera/d/a;->a()V

    goto :goto_0

    .line 81
    :cond_0
    iput-wide v0, p0, Lcom/zte/camera/d/a;->e:J

    .line 84
    :goto_0
    iget-boolean v0, p0, Lcom/zte/camera/d/a;->f:Z

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/zte/camera/d/a;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_1
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/zte/camera/d/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/zte/camera/d/a;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/camera/d/a;->e:J

    .line 97
    invoke-virtual {p0}, Lcom/zte/camera/d/a;->b()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 4

    .line 105
    invoke-virtual {p0}, Lcom/zte/camera/d/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-wide v0, p0, Lcom/zte/camera/d/a;->e:J

    iput-wide v0, p0, Lcom/zte/camera/d/a;->b:J

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zte/camera/d/a;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zte/camera/d/a;->a:J

    .line 108
    iget-object v0, p0, Lcom/zte/camera/d/a;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v0, 0x0

    .line 109
    iput-wide v0, p0, Lcom/zte/camera/d/a;->e:J

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 4

    .line 119
    iget-wide v0, p0, Lcom/zte/camera/d/a;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/zte/camera/d/a;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public h()J
    .locals 7

    .line 138
    invoke-virtual {p0}, Lcom/zte/camera/d/a;->f()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 139
    iget-wide v1, p0, Lcom/zte/camera/d/a;->e:J

    goto :goto_0

    .line 141
    :cond_0
    iget-wide v3, p0, Lcom/zte/camera/d/a;->a:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, v3

    :goto_0
    return-wide v1
.end method
