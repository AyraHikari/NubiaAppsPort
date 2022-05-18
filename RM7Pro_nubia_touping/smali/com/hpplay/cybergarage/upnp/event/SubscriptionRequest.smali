.class public Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;
.super Lcom/hpplay/cybergarage/http/HTTPRequest;
.source "SourceFile"


# static fields
.field private static final CALLBACK_END_WITH:Ljava/lang/String; = ">"

.field private static final CALLBACK_START_WITH:Ljava/lang/String; = "<"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;-><init>()V

    .line 49
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setContentLength(J)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/http/HTTPRequest;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->set(Lcom/hpplay/cybergarage/http/HTTPRequest;)V

    .line 55
    return-void
.end method

.method private setService(Lcom/hpplay/cybergarage/upnp/Service;)V
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Service;->getEventSubURL()Ljava/lang/String;

    move-result-object v1

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setURI(Ljava/lang/String;Z)V

    .line 67
    const-string v0, ""

    .line 68
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Service;->getDevice()Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Service;->getRootDevice()Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    .line 80
    :cond_3
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Service;->getRootDevice()Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v2

    .line 81
    if-eqz v2, :cond_4

    .line 82
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_6

    .line 87
    :cond_5
    invoke-static {v1}, Lcom/hpplay/cybergarage/http/HTTP;->isAbsoluteURL(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v0, v1

    .line 91
    :cond_6
    invoke-static {v0}, Lcom/hpplay/cybergarage/http/HTTP;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v0}, Lcom/hpplay/cybergarage/http/HTTP;->getPort(Ljava/lang/String;)I

    move-result v0

    .line 94
    invoke-virtual {p0, v1, v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setHost(Ljava/lang/String;I)V

    .line 95
    invoke-virtual {p0, v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setRequestHost(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setRequestPort(I)V

    .line 97
    return-void
.end method


# virtual methods
.method public getCallback()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    const-string v0, "CALLBACK"

    const-string v1, "<"

    const-string v2, ">"

    invoke-virtual {p0, v0, v1, v2}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->getStringHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "NT"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string v0, "SID"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/cybergarage/upnp/event/Subscription;->getSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    if-nez v0, :cond_0

    .line 169
    const-string v0, ""

    .line 170
    :cond_0
    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 187
    const-string v0, "TIMEOUT"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/cybergarage/upnp/event/Subscription;->getTimeout(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCallback()Z
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->getCallback()Ljava/lang/String;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNT()Z
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->getNT()Ljava/lang/String;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSID()Z
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->getSID()Ljava/lang/String;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public post()Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->getRequestHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->getRequestPort()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->post(Ljava/lang/String;I)Lcom/hpplay/cybergarage/http/HTTPResponse;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;

    invoke-direct {v1, v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;-><init>(Lcom/hpplay/cybergarage/http/HTTPResponse;)V

    return-object v1
.end method

.method public post(Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;)V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->post(Lcom/hpplay/cybergarage/http/HTTPResponse;)Z

    .line 196
    return-void
.end method

.method public setCallback(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 145
    const-string v0, "CALLBACK"

    const-string v1, "<"

    const-string v2, ">"

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setStringHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public setNT(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 125
    const-string v0, "NT"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public setRenewRequest(Lcom/hpplay/cybergarage/upnp/Service;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 108
    const-string v0, "SUBSCRIBE"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setMethod(Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setService(Lcom/hpplay/cybergarage/upnp/Service;)V

    .line 110
    invoke-virtual {p0, p2}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setSID(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p3, p4}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setTimeout(J)V

    .line 112
    return-void
.end method

.method public setSID(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 162
    const-string v0, "SID"

    invoke-static {p1}, Lcom/hpplay/cybergarage/upnp/event/Subscription;->toSIDHeaderString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public setSubscribeRequest(Lcom/hpplay/cybergarage/upnp/Service;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 100
    const-string v0, "SUBSCRIBE"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setMethod(Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setService(Lcom/hpplay/cybergarage/upnp/Service;)V

    .line 102
    invoke-virtual {p0, p2}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setCallback(Ljava/lang/String;)V

    .line 103
    const-string v0, "upnp:event"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setNT(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p3, p4}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setTimeout(J)V

    .line 105
    return-void
.end method

.method public final setTimeout(J)V
    .locals 3

    .prologue
    .line 183
    const-string v0, "TIMEOUT"

    invoke-static {p1, p2}, Lcom/hpplay/cybergarage/upnp/event/Subscription;->toTimeoutHeaderString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public setUnsubscribeRequest(Lcom/hpplay/cybergarage/upnp/Service;)V
    .locals 1

    .prologue
    .line 115
    const-string v0, "UNSUBSCRIBE"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setMethod(Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setService(Lcom/hpplay/cybergarage/upnp/Service;)V

    .line 117
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setSID(Ljava/lang/String;)V

    .line 118
    return-void
.end method
