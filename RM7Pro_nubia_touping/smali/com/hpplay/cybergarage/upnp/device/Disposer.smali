.class public Lcom/hpplay/cybergarage/upnp/device/Disposer;
.super Lcom/hpplay/cybergarage/util/ThreadCore;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Disposer"


# instance fields
.field private ctrlPoint:Lcom/hpplay/cybergarage/upnp/ControlPoint;


# direct methods
.method public constructor <init>(Lcom/hpplay/cybergarage/upnp/ControlPoint;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/hpplay/cybergarage/util/ThreadCore;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/device/Disposer;->setControlPoint(Lcom/hpplay/cybergarage/upnp/ControlPoint;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getControlPoint()Lcom/hpplay/cybergarage/upnp/ControlPoint;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/device/Disposer;->ctrlPoint:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    return-object v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/device/Disposer;->getControlPoint()Lcom/hpplay/cybergarage/upnp/ControlPoint;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getExpiredDeviceMonitoringInterval()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 55
    :goto_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/device/Disposer;->isRunnable()Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 57
    :try_start_0
    const-string v1, "checkdev"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disposer start : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 59
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->removeExpiredDevices()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const-string v0, "Disposer"

    const-string v1, "Disposer run Exception"

    invoke-static {v0, v1}, Lcom/hpplay/cybergarage/util/UPnPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method public setControlPoint(Lcom/hpplay/cybergarage/upnp/ControlPoint;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/device/Disposer;->ctrlPoint:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    .line 41
    return-void
.end method
