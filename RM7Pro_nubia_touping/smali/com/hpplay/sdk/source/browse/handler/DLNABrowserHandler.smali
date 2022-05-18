.class public Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$b;,
        Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "DLNABrowserHandler"

.field private static final b:Ljava/lang/String; = "urn:schemas-upnp-org:device:MediaRenderer:1"

.field private static final c:Ljava/lang/String; = "([0-9]{1,3}[\\.]){3}[0-9]{1,3}:[0-9]*"

.field private static final k:Ljava/lang/String; = "urn:upnp-org:serviceId:RenderingControl"

.field private static final l:Ljava/lang/String; = "LELINKFT"


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/hpplay/cybergarage/upnp/ControlPoint;

.field private f:Lcom/hpplay/sdk/source/browse/handler/b;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/cybergarage/upnp/Device;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/hpplay/cybergarage/upnp/Device;

.field private i:Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;

.field private j:Lcom/hpplay/sdk/source/browse/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->d:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private static a(Lcom/hpplay/cybergarage/upnp/Device;)Z
    .locals 2

    .prologue
    .line 129
    if-eqz p0, :cond_0

    const-string v0, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;Lcom/hpplay/cybergarage/upnp/Device;)Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->b(Lcom/hpplay/cybergarage/upnp/Device;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized b(Lcom/hpplay/cybergarage/upnp/Device;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 133
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->a(Lcom/hpplay/cybergarage/upnp/Device;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 145
    :goto_0
    monitor-exit p0

    return v0

    .line 135
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 136
    :goto_1
    if-ge v2, v3, :cond_2

    .line 137
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/Device;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 139
    goto :goto_0

    .line 136
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    const-string v0, "DLNABrowserHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Devices add a device"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    const/4 v0, 0x1

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;Lcom/hpplay/cybergarage/upnp/Device;)Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->c(Lcom/hpplay/cybergarage/upnp/Device;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized c(Lcom/hpplay/cybergarage/upnp/Device;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 149
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->a(Lcom/hpplay/cybergarage/upnp/Device;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 161
    :goto_0
    monitor-exit p0

    return v0

    .line 152
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 153
    :goto_1
    if-ge v2, v3, :cond_2

    .line 154
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/Device;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 157
    const-string v0, "DLNABrowserHandler"

    const-string v1, "Devices remove a device"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    const/4 v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 161
    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 2

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->f:Lcom/hpplay/sdk/source/browse/handler/b;

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "DLNABrowserHandler"

    const-string v1, "thread is not null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->f:Lcom/hpplay/sdk/source/browse/handler/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/handler/b;->a(I)V

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->f:Lcom/hpplay/sdk/source/browse/handler/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/handler/b;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    const-string v0, "DLNABrowserHandler"

    const-string v1, "thread is alive"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->f:Lcom/hpplay/sdk/source/browse/handler/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/handler/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_1
    monitor-exit p0

    return-void

    .line 80
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->e:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    if-nez v0, :cond_1

    .line 81
    const-string v0, "DLNABrowserHandler"

    const-string v1, "startThread mControlPoint is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :cond_1
    :try_start_2
    const-string v0, "DLNABrowserHandler"

    const-string v1, "thread is null, create a new thread"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/hpplay/sdk/source/browse/handler/b;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->e:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/browse/handler/b;-><init>(Lcom/hpplay/cybergarage/upnp/ControlPoint;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->f:Lcom/hpplay/sdk/source/browse/handler/b;

    goto :goto_0

    .line 92
    :cond_2
    const-string v0, "DLNABrowserHandler"

    const-string v1, "start the thread"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->f:Lcom/hpplay/sdk/source/browse/handler/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/handler/b;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized e()V
    .locals 1

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_0
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->e:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    if-nez v0, :cond_0

    .line 61
    const-string v0, "DLNABrowserHandler"

    const-string v1, "dlna start scan"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->g:Ljava/util/List;

    .line 63
    new-instance v0, Lcom/hpplay/cybergarage/upnp/ControlPoint;

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->e:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    .line 64
    new-instance v0, Lcom/hpplay/sdk/source/browse/handler/b;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->e:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/browse/handler/b;-><init>(Lcom/hpplay/cybergarage/upnp/ControlPoint;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->f:Lcom/hpplay/sdk/source/browse/handler/b;

    .line 65
    new-instance v0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->j:Lcom/hpplay/sdk/source/browse/c/a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;-><init>(Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;Lcom/hpplay/sdk/source/browse/c/a;Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$1;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->i:Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;

    .line 67
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->f:Lcom/hpplay/sdk/source/browse/handler/b;

    iget-object v1, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->i:Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$a;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/handler/b;->a(Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler$b;)V

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/hpplay/sdk/source/browse/c/a;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->j:Lcom/hpplay/sdk/source/browse/c/a;

    .line 57
    return-void
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->e()V

    .line 99
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->f:Lcom/hpplay/sdk/source/browse/handler/b;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->f:Lcom/hpplay/sdk/source/browse/handler/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/handler/b;->b()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->f:Lcom/hpplay/sdk/source/browse/handler/b;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->e:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->e:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->stopSearch()Z

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->e:Lcom/hpplay/cybergarage/upnp/ControlPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_1
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    const-string v0, "DLNABrowserHandler"

    const-string v1, "stop dlna service"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->e()V

    .line 112
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->f:Lcom/hpplay/sdk/source/browse/handler/b;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->f:Lcom/hpplay/sdk/source/browse/handler/b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/handler/b;->b()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->f:Lcom/hpplay/sdk/source/browse/handler/b;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->e:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->e:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->stop()Z

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/handler/DLNABrowserHandler;->e:Lcom/hpplay/cybergarage/upnp/ControlPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_1
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
