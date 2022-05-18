.class public Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;
.super Lcom/hpplay/cybergarage/http/HTTPResponse;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/hpplay/cybergarage/http/HTTPResponse;-><init>()V

    .line 28
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/UPnP;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->setServer(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/http/HTTPResponse;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPResponse;-><init>(Lcom/hpplay/cybergarage/http/HTTPResponse;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "SID"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/cybergarage/upnp/event/Subscription;->getSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 74
    const-string v0, "TIMEOUT"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/cybergarage/upnp/event/Subscription;->getTimeout(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setErrorResponse(I)V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->setStatusCode(I)V

    .line 50
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->setContentLength(J)V

    .line 51
    return-void
.end method

.method public setResponse(I)V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->setStatusCode(I)V

    .line 41
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->setContentLength(J)V

    .line 42
    return-void
.end method

.method public setSID(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    const-string v0, "SID"

    invoke-static {p1}, Lcom/hpplay/cybergarage/upnp/event/Subscription;->toSIDHeaderString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public setTimeout(J)V
    .locals 3

    .prologue
    .line 70
    const-string v0, "TIMEOUT"

    invoke-static {p1, p2}, Lcom/hpplay/cybergarage/upnp/event/Subscription;->toTimeoutHeaderString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method
