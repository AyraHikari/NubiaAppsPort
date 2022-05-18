.class public Lcom/hpplay/cybergarage/http/HTTPServerList;
.super Ljava/util/Vector;
.source "SourceFile"


# instance fields
.field private binds:[Ljava/net/InetAddress;

.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    .line 32
    const/16 v0, 0xfa4

    iput v0, p0, Lcom/hpplay/cybergarage/http/HTTPServerList;->port:I

    .line 35
    return-void
.end method

.method public constructor <init>([Ljava/net/InetAddress;I)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    .line 32
    const/16 v0, 0xfa4

    iput v0, p0, Lcom/hpplay/cybergarage/http/HTTPServerList;->port:I

    .line 38
    iput-object p1, p0, Lcom/hpplay/cybergarage/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    .line 39
    iput p2, p0, Lcom/hpplay/cybergarage/http/HTTPServerList;->port:I

    .line 40
    return-void
.end method


# virtual methods
.method public addRequestListener(Lcom/hpplay/cybergarage/http/HTTPRequestListener;)V
    .locals 3

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->size()I

    move-result v1

    .line 48
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 49
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->getHTTPServer(I)Lcom/hpplay/cybergarage/http/HTTPServer;

    move-result-object v2

    .line 50
    invoke-virtual {v2, p1}, Lcom/hpplay/cybergarage/http/HTTPServer;->addRequestListener(Lcom/hpplay/cybergarage/http/HTTPRequestListener;)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->size()I

    move-result v1

    .line 64
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 65
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->getHTTPServer(I)Lcom/hpplay/cybergarage/http/HTTPServer;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/http/HTTPServer;->close()Z

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method public getHTTPServer(I)Lcom/hpplay/cybergarage/http/HTTPServer;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPServerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/http/HTTPServer;

    return-object v0
.end method

.method public isRuning()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->getHTTPServer(I)Lcom/hpplay/cybergarage/http/HTTPServer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->getHTTPServer(I)Lcom/hpplay/cybergarage/http/HTTPServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/http/HTTPServer;->isRunning()Z

    move-result v0

    .line 122
    :cond_0
    return v0
.end method

.method public open()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v3, p0, Lcom/hpplay/cybergarage/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    .line 73
    if-eqz v3, :cond_4

    .line 74
    array-length v0, v3

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    .line 75
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 76
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    move v2, v1

    .line 86
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_6

    .line 87
    new-instance v3, Lcom/hpplay/cybergarage/http/HTTPServer;

    invoke-direct {v3}, Lcom/hpplay/cybergarage/http/HTTPServer;-><init>()V

    .line 88
    aget-object v4, v0, v1

    if-eqz v4, :cond_2

    aget-object v4, v0, v1

    iget v5, p0, Lcom/hpplay/cybergarage/http/HTTPServerList;->port:I

    invoke-virtual {v3, v4, v5}, Lcom/hpplay/cybergarage/http/HTTPServer;->open(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 89
    :cond_2
    if-nez v2, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->close()V

    .line 91
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->clear()V

    .line 86
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 79
    :cond_4
    invoke-static {}, Lcom/hpplay/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v3

    .line 80
    new-array v0, v3, [Ljava/lang/String;

    move v2, v1

    .line 81
    :goto_3
    if-ge v2, v3, :cond_1

    .line 82
    invoke-static {v2}, Lcom/hpplay/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 94
    :cond_5
    invoke-virtual {p0, v3}, Lcom/hpplay/cybergarage/http/HTTPServerList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 98
    :cond_6
    return v2
.end method

.method public open(I)Z
    .locals 1

    .prologue
    .line 102
    iput p1, p0, Lcom/hpplay/cybergarage/http/HTTPServerList;->port:I

    .line 103
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->open()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->size()I

    move-result v1

    .line 112
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 113
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->getHTTPServer(I)Lcom/hpplay/cybergarage/http/HTTPServer;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/http/HTTPServer;->start()Z

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->size()I

    move-result v1

    .line 127
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 128
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->getHTTPServer(I)Lcom/hpplay/cybergarage/http/HTTPServer;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/http/HTTPServer;->stop()Z

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method
