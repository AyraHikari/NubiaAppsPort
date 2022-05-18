.class Lcom/android/common/ui/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/ui/a/a$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:Lcom/android/common/ui/a/a$a;

.field private h:Ljava/lang/Thread;

.field private i:Landroid/os/Handler;

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(JLcom/android/common/ui/a/a$a;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/common/ui/a/a;->a:Z

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/android/common/ui/a/a;->b:J

    .line 12
    iput-wide v0, p0, Lcom/android/common/ui/a/a;->c:J

    .line 13
    iput-wide v0, p0, Lcom/android/common/ui/a/a;->d:J

    .line 14
    iput-wide v0, p0, Lcom/android/common/ui/a/a;->e:J

    .line 15
    iput-wide v0, p0, Lcom/android/common/ui/a/a;->f:J

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/android/common/ui/a/a;->g:Lcom/android/common/ui/a/a$a;

    .line 17
    iput-object v0, p0, Lcom/android/common/ui/a/a;->h:Ljava/lang/Thread;

    .line 18
    new-instance v0, Lcom/android/common/ui/a/a$1;

    invoke-direct {v0, p0}, Lcom/android/common/ui/a/a$1;-><init>(Lcom/android/common/ui/a/a;)V

    iput-object v0, p0, Lcom/android/common/ui/a/a;->i:Landroid/os/Handler;

    .line 40
    new-instance v0, Lcom/android/common/ui/a/a$2;

    invoke-direct {v0, p0}, Lcom/android/common/ui/a/a$2;-><init>(Lcom/android/common/ui/a/a;)V

    iput-object v0, p0, Lcom/android/common/ui/a/a;->j:Ljava/lang/Runnable;

    .line 75
    iput-object p3, p0, Lcom/android/common/ui/a/a;->g:Lcom/android/common/ui/a/a$a;

    .line 76
    iput-wide p1, p0, Lcom/android/common/ui/a/a;->d:J

    const-wide/16 v0, 0xa

    sub-long/2addr p1, v0

    .line 77
    iput-wide p1, p0, Lcom/android/common/ui/a/a;->f:J

    return-void
.end method

.method static synthetic a(Lcom/android/common/ui/a/a;J)J
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/android/common/ui/a/a;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/android/common/ui/a/a;)Lcom/android/common/ui/a/a$a;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/android/common/ui/a/a;->g:Lcom/android/common/ui/a/a$a;

    return-object p0
.end method

.method static synthetic b(Lcom/android/common/ui/a/a;J)J
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/android/common/ui/a/a;->e:J

    return-wide p1
.end method

.method static synthetic b(Lcom/android/common/ui/a/a;)Z
    .locals 0

    .line 7
    iget-boolean p0, p0, Lcom/android/common/ui/a/a;->a:Z

    return p0
.end method

.method static synthetic c(Lcom/android/common/ui/a/a;)J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/android/common/ui/a/a;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcom/android/common/ui/a/a;)J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/android/common/ui/a/a;->b:J

    return-wide v0
.end method

.method static synthetic e(Lcom/android/common/ui/a/a;)J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/android/common/ui/a/a;->e:J

    return-wide v0
.end method

.method static synthetic f(Lcom/android/common/ui/a/a;)J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/android/common/ui/a/a;->d:J

    return-wide v0
.end method

.method static synthetic g(Lcom/android/common/ui/a/a;)Landroid/os/Handler;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/android/common/ui/a/a;->i:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lcom/android/common/ui/a/a;)J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/android/common/ui/a/a;->f:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/android/common/ui/a/a;->a:Z

    .line 82
    iget-wide v0, p0, Lcom/android/common/ui/a/a;->d:J

    iput-wide v0, p0, Lcom/android/common/ui/a/a;->e:J

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/ui/a/a;->b:J

    .line 84
    iget-object v0, p0, Lcom/android/common/ui/a/a;->h:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/common/ui/a/a;->j:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/common/ui/a/a;->h:Ljava/lang/Thread;

    .line 86
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 91
    iget-boolean v0, p0, Lcom/android/common/ui/a/a;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/android/common/ui/a/a;->a:Z

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Lcom/android/common/ui/a/a;->b:J

    .line 96
    iput-wide v0, p0, Lcom/android/common/ui/a/a;->c:J

    .line 97
    iput-wide v0, p0, Lcom/android/common/ui/a/a;->e:J

    .line 98
    iget-object v0, p0, Lcom/android/common/ui/a/a;->j:Ljava/lang/Runnable;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/common/ui/a/a;->j:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 100
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :try_start_1
    iget-object v0, p0, Lcom/android/common/ui/a/a;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/android/common/ui/a/a;->h:Ljava/lang/Thread;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MyTimer"

    const-string v2, "finish join error"

    .line 105
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 100
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
