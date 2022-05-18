.class public Lcom/hpplay/cybergarage/upnp/control/RenewSubscriber;
.super Lcom/hpplay/cybergarage/util/ThreadCore;
.source "SourceFile"


# static fields
.field public static final INTERVAL:J = 0x78L


# instance fields
.field private ctrlPoint:Lcom/hpplay/cybergarage/upnp/ControlPoint;


# direct methods
.method public constructor <init>(Lcom/hpplay/cybergarage/upnp/ControlPoint;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/hpplay/cybergarage/util/ThreadCore;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/control/RenewSubscriber;->setControlPoint(Lcom/hpplay/cybergarage/upnp/ControlPoint;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getControlPoint()Lcom/hpplay/cybergarage/upnp/ControlPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/control/RenewSubscriber;->ctrlPoint:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/RenewSubscriber;->getControlPoint()Lcom/hpplay/cybergarage/upnp/ControlPoint;

    move-result-object v0

    .line 52
    const-wide/32 v2, 0x1d4c0

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/RenewSubscriber;->isRunnable()Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 55
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_1
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->renewSubscriberService()V

    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    goto :goto_1

    .line 60
    :cond_0
    return-void
.end method

.method public setControlPoint(Lcom/hpplay/cybergarage/upnp/ControlPoint;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/control/RenewSubscriber;->ctrlPoint:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    .line 40
    return-void
.end method
