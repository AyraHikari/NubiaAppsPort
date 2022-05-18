.class public Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;
.super Ljava/util/Vector;
.source "SourceFile"


# instance fields
.field private binds:[Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->binds:[Ljava/net/InetAddress;

    .line 33
    return-void
.end method

.method public constructor <init>([Ljava/net/InetAddress;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->binds:[Ljava/net/InetAddress;

    .line 40
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->binds:[Ljava/net/InetAddress;

    .line 41
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    .line 100
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 102
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;

    move-result-object v2

    .line 103
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->close()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    const-string v1, "ssdpnotify"

    invoke-static {v1, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->clear()V

    .line 110
    return-void
.end method

.method public getSSDPNotifySocket(I)Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;

    return-object v0
.end method

.method public isRuning()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->isRuning()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    const-string v2, "ssdpnotify"

    invoke-static {v2, v1}, Lcom/hpplay/cybergarage/util/UPnPLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public open()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v3, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->binds:[Ljava/net/InetAddress;

    .line 76
    if-eqz v3, :cond_3

    .line 77
    array-length v0, v3

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    .line 78
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 79
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 89
    :cond_1
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 90
    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    .line 91
    new-instance v2, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;

    aget-object v3, v0, v1

    invoke-direct {v2, v3}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 82
    :cond_3
    invoke-static {}, Lcom/hpplay/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v3

    .line 83
    new-array v0, v3, [Ljava/lang/String;

    move v2, v1

    .line 84
    :goto_2
    if-ge v2, v3, :cond_1

    .line 85
    invoke-static {v2}, Lcom/hpplay/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 95
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public setControlPoint(Lcom/hpplay/cybergarage/upnp/ControlPoint;)V
    .locals 3

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    .line 57
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 59
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;

    move-result-object v2

    .line 60
    invoke-virtual {v2, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->setControlPoint(Lcom/hpplay/cybergarage/upnp/ControlPoint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string v1, "ssdpnotify"

    invoke-static {v1, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    .line 118
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 120
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const-string v1, "ssdpnotify"

    invoke-static {v1, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    .line 144
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 145
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const-string v1, "ssdpnotify"

    invoke-static {v1, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    :cond_0
    return-void
.end method
