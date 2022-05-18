.class public Lcn/nubia/k/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/k/a/a$b;,
        Lcn/nubia/k/a/a$c;,
        Lcn/nubia/k/a/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private c:Z

.field private final d:Ljava/lang/Object;

.field private e:J

.field private final f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/nubia/k/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcn/nubia/k/a/e;

.field private h:Lcn/nubia/k/a/d;

.field private i:Lcn/nubia/k/a/b;

.field private j:Lcn/nubia/k/a/a$a;

.field private k:Z

.field private l:J

.field private m:Lcn/nubia/l/a/b;

.field private n:Landroid/os/Handler;

.field private o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, v0}, Lcn/nubia/k/a/a;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcn/nubia/k/a/a;->a:Landroid/content/Context;

    const-wide/16 v1, 0x0

    .line 27
    iput-wide v1, p0, Lcn/nubia/k/a/a;->b:J

    const/4 v3, 0x0

    .line 28
    iput-boolean v3, p0, Lcn/nubia/k/a/a;->c:Z

    .line 29
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcn/nubia/k/a/a;->d:Ljava/lang/Object;

    .line 30
    iput-wide v1, p0, Lcn/nubia/k/a/a;->e:J

    .line 31
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcn/nubia/k/a/a;->f:Ljava/util/LinkedList;

    .line 32
    new-instance v2, Lcn/nubia/k/a/e;

    invoke-direct {v2}, Lcn/nubia/k/a/e;-><init>()V

    iput-object v2, p0, Lcn/nubia/k/a/a;->g:Lcn/nubia/k/a/e;

    .line 33
    iput-object v0, p0, Lcn/nubia/k/a/a;->h:Lcn/nubia/k/a/d;

    .line 34
    iput-object v0, p0, Lcn/nubia/k/a/a;->i:Lcn/nubia/k/a/b;

    .line 36
    iput-boolean v3, p0, Lcn/nubia/k/a/a;->k:Z

    const-wide/16 v2, -0x1

    .line 37
    iput-wide v2, p0, Lcn/nubia/k/a/a;->l:J

    .line 38
    new-instance v0, Lcn/nubia/l/a/b;

    invoke-direct {v0}, Lcn/nubia/l/a/b;-><init>()V

    iput-object v0, p0, Lcn/nubia/k/a/a;->m:Lcn/nubia/l/a/b;

    .line 40
    new-instance v0, Lcn/nubia/k/a/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcn/nubia/k/a/a$1;-><init>(Lcn/nubia/k/a/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/k/a/a;->n:Landroid/os/Handler;

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/k/a/a;->o:Ljava/lang/Object;

    .line 115
    iput-boolean p2, p0, Lcn/nubia/k/a/a;->k:Z

    .line 116
    iput-object p1, p0, Lcn/nubia/k/a/a;->a:Landroid/content/Context;

    .line 117
    new-instance p1, Lcn/nubia/k/a/d;

    iget-object p2, p0, Lcn/nubia/k/a/a;->n:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-direct {p1, v1, p2, v0}, Lcn/nubia/k/a/d;-><init>(Ljava/util/LinkedList;Landroid/os/Handler;I)V

    iput-object p1, p0, Lcn/nubia/k/a/a;->h:Lcn/nubia/k/a/d;

    .line 118
    invoke-virtual {p1}, Lcn/nubia/k/a/d;->a()V

    .line 119
    invoke-direct {p0}, Lcn/nubia/k/a/a;->h()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/k/a/a;)Lcn/nubia/k/a/b;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/k/a/a;->i:Lcn/nubia/k/a/b;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/k/a/a;Lcn/nubia/k/a/b;)Lcn/nubia/k/a/b;
    .locals 0

    .line 21
    iput-object p1, p0, Lcn/nubia/k/a/a;->i:Lcn/nubia/k/a/b;

    return-object p1
.end method

.method static synthetic b(Lcn/nubia/k/a/a;)Lcn/nubia/k/a/e;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/k/a/a;->g:Lcn/nubia/k/a/e;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/k/a/a;)Lcn/nubia/k/a/a$a;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/k/a/a;->j:Lcn/nubia/k/a/a$a;

    return-object p0
.end method

.method private c(J)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/32 p1, 0x1400000

    .line 326
    :cond_0
    invoke-direct {p0}, Lcn/nubia/k/a/a;->j()J

    move-result-wide v2

    sub-long/2addr v2, p1

    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private declared-synchronized h()V
    .locals 3

    monitor-enter p0

    .line 278
    :try_start_0
    new-instance v0, Lcn/nubia/k/b/g;

    invoke-direct {v0, p0}, Lcn/nubia/k/b/g;-><init>(Lcn/nubia/k/a/a;)V

    .line 279
    iget-object v1, p0, Lcn/nubia/k/a/a;->f:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    iget-object v1, p0, Lcn/nubia/k/a/a;->f:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 281
    :try_start_1
    iget-object v2, p0, Lcn/nubia/k/a/a;->f:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Lcn/nubia/k/a/a;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 283
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 285
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()Z
    .locals 2

    .line 316
    iget-object v0, p0, Lcn/nubia/k/a/a;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j()J
    .locals 2

    .line 335
    iget-wide v0, p0, Lcn/nubia/k/a/a;->e:J

    return-wide v0
.end method

.method private k()J
    .locals 5

    .line 339
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcn/nubia/k/a/a;->e:J

    return-wide v1
.end method


# virtual methods
.method public declared-synchronized a(JZ)Lcn/nubia/k/a/a$b;
    .locals 5

    monitor-enter p0

    .line 201
    :try_start_0
    iget-wide v0, p0, Lcn/nubia/k/a/a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/k/a/a;->f()J

    .line 204
    :cond_1
    invoke-direct {p0}, Lcn/nubia/k/a/a;->k()J

    const-string p3, "StorageManager"

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remaining memory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/k/a/a;->e:J

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB storage size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/k/a/a;->b:J

    div-long/2addr v1, v3

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB queue used size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/k/a/a;->f:Ljava/util/LinkedList;

    .line 207
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {p3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Lcn/nubia/k/a/a;->c()Z

    move-result p3

    if-nez p3, :cond_2

    const-string p1, "StorageManager"

    const-string p2, "Current storage is not sufficient"

    .line 210
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p1, p0, Lcn/nubia/k/a/a;->n:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 212
    iget-object p1, p0, Lcn/nubia/k/a/a;->n:Landroid/os/Handler;

    new-instance p3, Lcn/nubia/k/a/a$c;

    iget-wide v0, p0, Lcn/nubia/k/a/a;->b:J

    iget-boolean v2, p0, Lcn/nubia/k/a/a;->k:Z

    invoke-direct {p3, p0, v0, v1, v2}, Lcn/nubia/k/a/a$c;-><init>(Lcn/nubia/k/a/a;JZ)V

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 213
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 214
    sget-object p1, Lcn/nubia/k/a/a$b;->f:Lcn/nubia/k/a/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 215
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcn/nubia/k/a/a;->c(J)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "StorageManager"

    const-string p2, "Current process remaining memory is not sufficient"

    .line 216
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sget-object p1, Lcn/nubia/k/a/a$b;->d:Lcn/nubia/k/a/a$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 218
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcn/nubia/k/a/a;->i()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "StorageManager"

    const-string p2, "Request queue is full"

    .line 219
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget-object p1, Lcn/nubia/k/a/a$b;->i:Lcn/nubia/k/a/a$b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    :try_start_3
    const-string p1, "StorageManager"

    const-string p2, "Able to add request to queue now"

    .line 222
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-object p1, Lcn/nubia/k/a/a$b;->c:Lcn/nubia/k/a/a$b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;
    .locals 0

    monitor-enter p0

    .line 240
    :try_start_0
    invoke-interface {p1, p2}, Lcn/nubia/k/b/e;->a(Z)V

    const/4 p2, 0x0

    .line 241
    invoke-virtual {p0, p1, p2}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(J)V
    .locals 0

    .line 127
    iput-wide p1, p0, Lcn/nubia/k/a/a;->l:J

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcn/nubia/k/a/a;->a:Landroid/content/Context;

    return-void
.end method

.method public a(Lcn/nubia/k/a/a$a;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcn/nubia/k/a/a;->j:Lcn/nubia/k/a/a$a;

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcn/nubia/k/a/a;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/k/a/a;->k:Z

    if-eq v1, p1, :cond_0

    .line 138
    iput-boolean p1, p0, Lcn/nubia/k/a/a;->k:Z

    .line 139
    invoke-direct {p0}, Lcn/nubia/k/a/a;->h()V

    .line 141
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcn/nubia/k/a/a;->k:Z

    return v0
.end method

.method public declared-synchronized b(J)Lcn/nubia/k/a/a$b;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 186
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/k/a/a;->a(JZ)Lcn/nubia/k/a/a$b;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;
    .locals 2

    monitor-enter p0

    .line 258
    :try_start_0
    iget-object v0, p0, Lcn/nubia/k/a/a;->h:Lcn/nubia/k/a/d;

    if-nez v0, :cond_0

    const-string p1, "StorageManager"

    const-string p2, "ThreadPool has stopped"

    .line 259
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    sget-object p1, Lcn/nubia/k/a/a$b;->k:Lcn/nubia/k/a/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object p1

    :cond_0
    const-wide/16 v0, 0x0

    .line 262
    :try_start_1
    invoke-virtual {p0, v0, v1, p2}, Lcn/nubia/k/a/a;->a(JZ)Lcn/nubia/k/a/a$b;

    move-result-object p2

    .line 263
    sget-object v0, Lcn/nubia/k/a/a$b;->c:Lcn/nubia/k/a/a$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq p2, v0, :cond_1

    .line 264
    monitor-exit p0

    return-object p2

    .line 265
    :cond_1
    :try_start_2
    iget-object p2, p0, Lcn/nubia/k/a/a;->f:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 266
    sget-object p1, Lcn/nubia/k/a/a$b;->b:Lcn/nubia/k/a/a$b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object p1

    .line 268
    :cond_2
    :try_start_3
    iget-object p2, p0, Lcn/nubia/k/a/a;->f:Ljava/util/LinkedList;

    monitor-enter p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 269
    :try_start_4
    iget-object v0, p0, Lcn/nubia/k/a/a;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object p1, p0, Lcn/nubia/k/a/a;->f:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 271
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 272
    :try_start_5
    sget-object p1, Lcn/nubia/k/a/a$b;->a:Lcn/nubia/k/a/a$b;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 271
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcn/nubia/k/a/a;->k:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/k/a/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/k/c/f;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/nubia/k/a/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/k/c/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 4

    .line 227
    iget-wide v0, p0, Lcn/nubia/k/a/a;->b:J

    invoke-virtual {p0}, Lcn/nubia/k/a/a;->g()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()I
    .locals 1

    .line 299
    iget-object v0, p0, Lcn/nubia/k/a/a;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public e()J
    .locals 2

    .line 350
    iget-wide v0, p0, Lcn/nubia/k/a/a;->b:J

    return-wide v0
.end method

.method public f()J
    .locals 8

    .line 367
    iget-object v0, p0, Lcn/nubia/k/a/a;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/k/a/a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    .line 370
    :try_start_1
    iget-object v1, p0, Lcn/nubia/k/a/a;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 371
    iget-wide v1, p0, Lcn/nubia/k/a/a;->b:J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit v0

    return-wide v1

    :catch_0
    move-exception v1

    .line 373
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 376
    iput-boolean v1, p0, Lcn/nubia/k/a/a;->c:Z

    .line 378
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 379
    iget-object v1, p0, Lcn/nubia/k/a/a;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 380
    :try_start_3
    iget-boolean v0, p0, Lcn/nubia/k/a/a;->k:Z

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcn/nubia/k/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/k/c/f;->b(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/k/a/a;->b:J

    goto :goto_1

    .line 383
    :cond_1
    iget-object v0, p0, Lcn/nubia/k/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/k/c/f;->a(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/k/a/a;->b:J

    .line 385
    :goto_1
    iget-object v0, p0, Lcn/nubia/k/a/a;->j:Lcn/nubia/k/a/a$a;

    if-eqz v0, :cond_2

    .line 386
    iget-object v0, p0, Lcn/nubia/k/a/a;->n:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 387
    iget-object v0, p0, Lcn/nubia/k/a/a;->n:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 389
    iget-object v0, p0, Lcn/nubia/k/a/a;->n:Landroid/os/Handler;

    new-instance v4, Lcn/nubia/k/a/a$c;

    iget-wide v5, p0, Lcn/nubia/k/a/a;->b:J

    iget-boolean v7, p0, Lcn/nubia/k/a/a;->k:Z

    invoke-direct {v4, p0, v5, v6, v7}, Lcn/nubia/k/a/a$c;-><init>(Lcn/nubia/k/a/a;JZ)V

    invoke-virtual {v0, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 390
    invoke-virtual {p0}, Lcn/nubia/k/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 391
    iget-object v0, p0, Lcn/nubia/k/a/a;->n:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/k/a/a$c;

    iget-wide v4, p0, Lcn/nubia/k/a/a;->b:J

    iget-boolean v6, p0, Lcn/nubia/k/a/a;->k:Z

    invoke-direct {v2, p0, v4, v5, v6}, Lcn/nubia/k/a/a$c;-><init>(Lcn/nubia/k/a/a;JZ)V

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 394
    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 395
    iget-object v0, p0, Lcn/nubia/k/a/a;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 396
    :try_start_4
    iput-boolean v1, p0, Lcn/nubia/k/a/a;->c:Z

    .line 397
    iget-object v1, p0, Lcn/nubia/k/a/a;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 398
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 399
    iget-wide v0, p0, Lcn/nubia/k/a/a;->b:J

    return-wide v0

    :catchall_0
    move-exception v1

    .line 398
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 394
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 378
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1
.end method

.method public g()J
    .locals 4

    .line 403
    iget-wide v0, p0, Lcn/nubia/k/a/a;->l:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x3200000

    return-wide v0
.end method
