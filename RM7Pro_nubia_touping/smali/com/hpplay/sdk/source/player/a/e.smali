.class public Lcom/hpplay/sdk/source/player/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/hpplay/sdk/source/player/a/e;


# instance fields
.field private a:Lcom/hpplay/cybergarage/upnp/ControlPoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/hpplay/sdk/source/player/a/e;
    .locals 2

    .prologue
    .line 18
    const-class v1, Lcom/hpplay/sdk/source/player/a/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hpplay/sdk/source/player/a/e;->b:Lcom/hpplay/sdk/source/player/a/e;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/hpplay/sdk/source/player/a/e;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/player/a/e;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/player/a/e;->b:Lcom/hpplay/sdk/source/player/a/e;

    .line 21
    :cond_0
    sget-object v0, Lcom/hpplay/sdk/source/player/a/e;->b:Lcom/hpplay/sdk/source/player/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/hpplay/cybergarage/upnp/event/EventListener;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/e;->a:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/e;->a:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->addEventListener(Lcom/hpplay/cybergarage/upnp/event/EventListener;)V

    .line 36
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/e;->a:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/hpplay/cybergarage/upnp/ControlPoint;

    invoke-direct {v0, p1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/a/e;->a:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/e;->a:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->startSucribeServ()Z

    .line 29
    return-void
.end method

.method public a(Lcom/hpplay/cybergarage/upnp/Device;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/a/e;->a:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    if-eqz v1, :cond_0

    .line 46
    const-string v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lcom/hpplay/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v1

    .line 47
    if-nez v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/e;->a:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->subscribe(Lcom/hpplay/cybergarage/upnp/Service;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/e;->a:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/e;->a:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->unsubscribe()V

    .line 59
    :cond_0
    return-void
.end method

.method public b(Lcom/hpplay/cybergarage/upnp/event/EventListener;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/e;->a:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/a/e;->a:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->removeEventListener(Lcom/hpplay/cybergarage/upnp/event/EventListener;)V

    .line 42
    :cond_0
    return-void
.end method
