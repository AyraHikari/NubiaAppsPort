.class public Lcn/nubia/camera/y/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/y/g$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:I

.field private h:Lcn/nubia/camera/y/g$a;

.field private i:Ljava/lang/Thread;

.field private j:Landroid/os/Handler;

.field private k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(JLcn/nubia/camera/y/g$a;)V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcn/nubia/camera/y/g;->a:Z

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcn/nubia/camera/y/g;->b:J

    .line 14
    iput-wide v0, p0, Lcn/nubia/camera/y/g;->c:J

    .line 15
    iput-wide v0, p0, Lcn/nubia/camera/y/g;->d:J

    .line 16
    iput-wide v0, p0, Lcn/nubia/camera/y/g;->e:J

    .line 17
    iput-wide v0, p0, Lcn/nubia/camera/y/g;->f:J

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcn/nubia/camera/y/g;->g:I

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcn/nubia/camera/y/g;->h:Lcn/nubia/camera/y/g$a;

    .line 20
    iput-object v0, p0, Lcn/nubia/camera/y/g;->i:Ljava/lang/Thread;

    .line 21
    new-instance v0, Lcn/nubia/camera/y/g$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/y/g$1;-><init>(Lcn/nubia/camera/y/g;)V

    iput-object v0, p0, Lcn/nubia/camera/y/g;->j:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcn/nubia/camera/y/g$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/y/g$2;-><init>(Lcn/nubia/camera/y/g;)V

    iput-object v0, p0, Lcn/nubia/camera/y/g;->k:Ljava/lang/Runnable;

    .line 96
    iput-object p3, p0, Lcn/nubia/camera/y/g;->h:Lcn/nubia/camera/y/g$a;

    .line 97
    iput-wide p1, p0, Lcn/nubia/camera/y/g;->d:J

    .line 98
    invoke-direct {p0}, Lcn/nubia/camera/y/g;->c()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/y/g;J)J
    .locals 0

    .line 7
    iput-wide p1, p0, Lcn/nubia/camera/y/g;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcn/nubia/camera/y/g;)Lcn/nubia/camera/y/g$a;
    .locals 0

    .line 7
    iget-object p0, p0, Lcn/nubia/camera/y/g;->h:Lcn/nubia/camera/y/g$a;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/y/g;J)J
    .locals 0

    .line 7
    iput-wide p1, p0, Lcn/nubia/camera/y/g;->e:J

    return-wide p1
.end method

.method static synthetic b(Lcn/nubia/camera/y/g;)Z
    .locals 0

    .line 7
    iget-boolean p0, p0, Lcn/nubia/camera/y/g;->a:Z

    return p0
.end method

.method static synthetic c(Lcn/nubia/camera/y/g;)J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcn/nubia/camera/y/g;->c:J

    return-wide v0
.end method

.method private c()V
    .locals 5

    .line 150
    iget-wide v0, p0, Lcn/nubia/camera/y/g;->d:J

    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x3e8

    if-ltz v2, :cond_0

    cmp-long v2, v0, v3

    if-gez v2, :cond_0

    const-wide/16 v2, 0xa

    sub-long/2addr v0, v2

    .line 151
    iput-wide v0, p0, Lcn/nubia/camera/y/g;->f:J

    goto :goto_0

    :cond_0
    cmp-long v0, v0, v3

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x3de

    .line 153
    iput-wide v0, p0, Lcn/nubia/camera/y/g;->f:J

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/y/g;)J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcn/nubia/camera/y/g;->b:J

    return-wide v0
.end method

.method static synthetic e(Lcn/nubia/camera/y/g;)I
    .locals 0

    .line 7
    iget p0, p0, Lcn/nubia/camera/y/g;->g:I

    return p0
.end method

.method static synthetic f(Lcn/nubia/camera/y/g;)Landroid/os/Handler;
    .locals 0

    .line 7
    iget-object p0, p0, Lcn/nubia/camera/y/g;->j:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/y/g;)I
    .locals 2

    .line 7
    iget v0, p0, Lcn/nubia/camera/y/g;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/camera/y/g;->g:I

    return v0
.end method

.method static synthetic h(Lcn/nubia/camera/y/g;)J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcn/nubia/camera/y/g;->e:J

    return-wide v0
.end method

.method static synthetic i(Lcn/nubia/camera/y/g;)J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcn/nubia/camera/y/g;->d:J

    return-wide v0
.end method

.method static synthetic j(Lcn/nubia/camera/y/g;)J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcn/nubia/camera/y/g;->f:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcn/nubia/camera/y/g;->a:Z

    .line 103
    iget-wide v0, p0, Lcn/nubia/camera/y/g;->d:J

    iput-wide v0, p0, Lcn/nubia/camera/y/g;->e:J

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/y/g;->b:J

    .line 105
    iget-object v0, p0, Lcn/nubia/camera/y/g;->i:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcn/nubia/camera/y/g;->k:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcn/nubia/camera/y/g;->i:Ljava/lang/Thread;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInterval = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyTimer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-wide p1, p0, Lcn/nubia/camera/y/g;->d:J

    .line 137
    invoke-direct {p0}, Lcn/nubia/camera/y/g;->c()V

    return-void
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcn/nubia/camera/y/g;->a:Z

    const-wide/16 v0, 0x0

    .line 113
    iput-wide v0, p0, Lcn/nubia/camera/y/g;->b:J

    .line 114
    iput-wide v0, p0, Lcn/nubia/camera/y/g;->c:J

    .line 115
    iput-wide v0, p0, Lcn/nubia/camera/y/g;->e:J

    const/4 v0, 0x1

    .line 116
    iput v0, p0, Lcn/nubia/camera/y/g;->g:I

    .line 117
    iget-object v1, p0, Lcn/nubia/camera/y/g;->k:Ljava/lang/Runnable;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/y/g;->k:Ljava/lang/Runnable;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 119
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :try_start_1
    iget-object v1, p0, Lcn/nubia/camera/y/g;->i:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    const/4 v1, 0x0

    .line 122
    iput-object v1, p0, Lcn/nubia/camera/y/g;->i:Ljava/lang/Thread;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MyTimer"

    const-string v3, "finish join error"

    .line 124
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/y/g;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :catchall_0
    move-exception v0

    .line 119
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
