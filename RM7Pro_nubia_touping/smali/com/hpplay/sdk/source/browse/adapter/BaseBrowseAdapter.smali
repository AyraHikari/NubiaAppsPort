.class public abstract Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;
    }
.end annotation


# static fields
.field private static final a:I


# instance fields
.field private b:Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;

.field private c:Lcom/hpplay/sdk/source/browse/handler/a;

.field private d:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IILcom/hpplay/sdk/source/browse/c/a;Z)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->d:Landroid/content/Context;

    .line 29
    if-nez p6, :cond_1

    .line 30
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->b:Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;

    .line 32
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->b:Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;->init(Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;)V

    .line 34
    :cond_0
    instance-of v0, p0, Lcom/hpplay/sdk/source/browse/adapter/b;

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Lcom/hpplay/sdk/source/browse/handler/a;

    invoke-direct {v0, p2, p3, p4}, Lcom/hpplay/sdk/source/browse/handler/a;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->c:Lcom/hpplay/sdk/source/browse/handler/a;

    .line 36
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->c:Lcom/hpplay/sdk/source/browse/handler/a;

    invoke-virtual {v0, p5}, Lcom/hpplay/sdk/source/browse/handler/a;->a(Lcom/hpplay/sdk/source/browse/c/a;)V

    .line 39
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;)Lcom/hpplay/sdk/source/browse/handler/a;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->c:Lcom/hpplay/sdk/source/browse/handler/a;

    return-object v0
.end method

.method private declared-synchronized b(Lcom/hpplay/sdk/source/browse/b/b;)V
    .locals 6

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->c:Lcom/hpplay/sdk/source/browse/handler/a;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->c:Lcom/hpplay/sdk/source/browse/handler/a;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/browse/handler/a;->a(Lcom/hpplay/sdk/source/browse/b/b;)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->b:Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->b:Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;->isStart()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->b:Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;->removeMessages(I)V

    .line 53
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->b:Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;

    const/4 v1, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Lcom/hpplay/sdk/source/browse/b/b;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->b(Lcom/hpplay/sdk/source/browse/b/b;)V

    .line 45
    return-void
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public declared-synchronized d()V
    .locals 2

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->b:Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->b:Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->b:Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->c:Lcom/hpplay/sdk/source/browse/handler/a;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->c:Lcom/hpplay/sdk/source/browse/handler/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/handler/a;->c()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->c:Lcom/hpplay/sdk/source/browse/handler/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract e()V
.end method
