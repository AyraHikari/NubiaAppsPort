.class public Lcom/hpplay/sdk/source/browse/handler/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/browse/handler/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DLNASearchThread"

.field private static final h:J

.field private static final i:J


# instance fields
.field private b:Z

.field private c:I

.field private d:Z

.field private e:Lcom/hpplay/cybergarage/upnp/ControlPoint;

.field private f:Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$b;

.field private g:Lcom/hpplay/sdk/source/browse/handler/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/hpplay/sdk/source/browse/handler/b;->h:J

    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/hpplay/sdk/source/browse/handler/b;->i:J

    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/upnp/ControlPoint;)V
    .locals 2

    .prologue
    .line 31
    const-string v0, "DLNASearchThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/b;->d:Z

    .line 32
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/handler/b;->e:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    .line 33
    new-instance v0, Lcom/hpplay/sdk/source/browse/handler/b$a;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/browse/handler/b$a;-><init>(Lcom/hpplay/sdk/source/browse/handler/b;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/b;->g:Lcom/hpplay/sdk/source/browse/handler/b$a;

    .line 34
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/b;->e:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/handler/b;->g:Lcom/hpplay/sdk/source/browse/handler/b$a;

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->addDeviceChangeListener(Lcom/hpplay/cybergarage/upnp/device/DeviceChangeListener;)V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/browse/handler/b;)Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$b;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/b;->f:Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$b;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 63
    :try_start_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/b;->b:Z

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/b;->e:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->search()V

    .line 65
    const-string v0, "DLNASearchThread"

    const-string v1, "ControlPoint search..."

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    :goto_0
    monitor-enter p0

    .line 81
    :try_start_1
    iget v0, p0, Lcom/hpplay/sdk/source/browse/handler/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/browse/handler/b;->c:I

    .line 82
    iget v0, p0, Lcom/hpplay/sdk/source/browse/handler/b;->c:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 83
    sget-wide v0, Lcom/hpplay/sdk/source/browse/handler/b;->i:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    return-void

    .line 67
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/b;->e:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->stop()Z

    .line 68
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/b;->e:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->start()Z

    move-result v0

    .line 69
    const-string v1, "DLNASearchThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ControlPoint start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/b;->b:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string v1, "DLNASearchThread"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 85
    :cond_2
    :try_start_4
    sget-wide v0, Lcom/hpplay/sdk/source/browse/handler/b;->h:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 87
    :catch_1
    move-exception v0

    .line 88
    :try_start_5
    const-string v1, "DLNASearchThread"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 99
    monitor-exit p0

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 1

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/hpplay/sdk/source/browse/handler/b;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$b;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/handler/b;->f:Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$b;

    .line 39
    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/b;->g:Lcom/hpplay/sdk/source/browse/handler/b$a;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/b;->e:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->stop()Z

    .line 109
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/b;->e:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/handler/b;->g:Lcom/hpplay/sdk/source/browse/handler/b$a;

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->removeDeviceChangeListener(Lcom/hpplay/cybergarage/upnp/device/DeviceChangeListener;)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/b;->g:Lcom/hpplay/sdk/source/browse/handler/b$a;

    .line 112
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/b;->d:Z

    .line 113
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/browse/handler/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 52
    :goto_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/handler/b;->d:Z

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/b;->e:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    if-nez v0, :cond_1

    .line 58
    :cond_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 59
    return-void

    .line 56
    :cond_1
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/handler/b;->c()V

    goto :goto_0
.end method
