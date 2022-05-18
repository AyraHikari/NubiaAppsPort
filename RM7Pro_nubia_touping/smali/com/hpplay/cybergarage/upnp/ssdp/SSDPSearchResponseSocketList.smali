.class public Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;
.super Ljava/util/Vector;
.source "SourceFile"


# instance fields
.field private binds:[Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->binds:[Ljava/net/InetAddress;

    .line 36
    return-void
.end method

.method public constructor <init>([Ljava/net/InetAddress;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->binds:[Ljava/net/InetAddress;

    .line 42
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->binds:[Ljava/net/InetAddress;

    .line 43
    return-void
.end method


# virtual methods
.method public callbackErrorCode()V
    .locals 4

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v1

    .line 109
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 110
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    move-result-object v2

    .line 111
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->getControlPoint()Lcom/hpplay/cybergarage/upnp/ControlPoint;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->getControlPoint()Lcom/hpplay/cybergarage/upnp/ControlPoint;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->callbackResultCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string v1, "SSDPSearchList"

    invoke-static {v1, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    :cond_1
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v1

    .line 125
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->close()Z

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->clear()V

    .line 130
    return-void
.end method

.method public getSSDPSearchResponseSocket(I)Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    return-object v0
.end method

.method public open()Z
    .locals 1

    .prologue
    .line 103
    const/16 v0, 0x76c

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->open(I)Z

    move-result v0

    return v0
.end method

.method public open(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v3, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->binds:[Ljava/net/InetAddress;

    .line 75
    if-eqz v3, :cond_2

    .line 76
    array-length v0, v3

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    .line 77
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 78
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    move v2, v1

    .line 88
    :goto_1
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 89
    new-instance v3, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    aget-object v4, v0, v2

    invoke-direct {v3, v4, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;-><init>(Ljava/lang/String;I)V

    .line 90
    invoke-virtual {p0, v3}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 81
    :cond_2
    invoke-static {}, Lcom/hpplay/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v3

    .line 82
    new-array v0, v3, [Ljava/lang/String;

    move v2, v1

    .line 83
    :goto_2
    if-ge v2, v3, :cond_1

    .line 84
    invoke-static {v2}, Lcom/hpplay/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->callbackErrorCode()V

    .line 94
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->stop()V

    .line 95
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->close()V

    .line 96
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->clear()V

    .line 99
    :goto_3
    return v1

    :cond_3
    const/4 v1, 0x1

    goto :goto_3
.end method

.method public post(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;)Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v5

    move v3, v1

    move v2, v4

    .line 159
    :goto_0
    if-ge v3, v5, :cond_1

    .line 160
    invoke-virtual {p0, v3}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    move-result-object v6

    .line 161
    invoke-virtual {v6}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v7

    .line 162
    invoke-virtual {p1, v7}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;->setLocalAddress(Ljava/lang/String;)V

    .line 163
    const-string v0, "239.255.255.250"

    .line 164
    invoke-static {v7}, Lcom/hpplay/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v4, :cond_0

    .line 165
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    .line 167
    :cond_0
    const/16 v7, 0x76c

    invoke-virtual {v6, v0, v7, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->post(Ljava/lang/String;ILcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 159
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 171
    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public setControlPoint(Lcom/hpplay/cybergarage/upnp/ControlPoint;)V
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v1

    .line 54
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 55
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    move-result-object v2

    .line 56
    invoke-virtual {v2, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->setControlPoint(Lcom/hpplay/cybergarage/upnp/ControlPoint;)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v1

    .line 138
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 139
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->start()V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v1

    .line 146
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 147
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->stop()V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method
