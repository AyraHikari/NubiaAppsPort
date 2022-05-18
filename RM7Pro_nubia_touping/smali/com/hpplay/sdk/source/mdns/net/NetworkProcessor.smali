.class public abstract Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/Runnable;


# static fields
.field public static final AVERAGE_QUEUE_THRESHOLD:I = 0x2

.field public static final DEFAULT_MTU:I = 0x5dc

.field public static final MAX_QUEUE_THRESHOLD:I = 0xa

.field public static final PACKET_MONITOR_NO_PACKET_RECEIVED_TIMEOUT:I = 0x186a0

.field public static final TAG:Ljava/lang/String; = "NetworkProcessor"


# instance fields
.field protected address:Ljava/net/InetAddress;

.field protected transient exit:Z

.field protected ifaceAddress:Ljava/net/InetAddress;

.field protected ipv6:Z

.field protected isClose:Z

.field protected listener:Lcom/hpplay/sdk/source/mdns/net/PacketListener;

.field protected mtu:I

.field protected networkReadThread:Ljava/lang/Thread;

.field protected port:I

.field protected threadMonitoring:Z


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;Ljava/net/InetAddress;ILcom/hpplay/sdk/source/mdns/net/PacketListener;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v1, 0x5dc

    iput v1, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->mtu:I

    .line 26
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->exit:Z

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->networkReadThread:Ljava/lang/Thread;

    .line 30
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->isClose:Z

    .line 34
    const-string v1, "mdns_network_thread_monitor"

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->threadMonitoring:Z

    .line 36
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->setInterfaceAddress(Ljava/net/InetAddress;)V

    .line 37
    iput-object p2, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->address:Ljava/net/InetAddress;

    .line 38
    invoke-virtual {p0, p3}, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->setPort(I)V

    .line 40
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 41
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Interface Address and bind address bust be the same IP specifciation!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->ipv6:Z

    .line 46
    iput-object p4, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->listener:Lcom/hpplay/sdk/source/mdns/net/PacketListener;

    .line 47
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    const-string v0, "NetworkProcessor"

    const-string v1, "------------------------ > >>> >>> release  "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->exit:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->isClose:Z

    .line 54
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->networkReadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->networkReadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getInterfaceAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->ifaceAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getMTU()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->mtu:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->port:I

    return v0
.end method

.method public isIPv4()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->ipv6:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIPv6()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->ipv6:Z

    return v0
.end method

.method public isOperational()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->exit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract send([B)V
.end method

.method public setInterfaceAddress(Ljava/net/InetAddress;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->ifaceAddress:Ljava/net/InetAddress;

    .line 92
    return-void
.end method

.method public setPort(I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->port:I

    .line 96
    return-void
.end method

.method public declared-synchronized start()V
    .locals 3

    .prologue
    .line 99
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->exit:Z

    .line 105
    const-string v0, "NetworkProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------------------------ > >>> >>> NetworkProcessor   run"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->threadMonitoring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->threadMonitoring:Z

    if-eqz v0, :cond_0

    .line 132
    :cond_0
    const-string v0, "NetworkProcessor"

    const-string v1, "------------------------ > >>> >>> start CRATE THREAD "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->networkReadThread:Ljava/lang/Thread;

    .line 134
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->networkReadThread:Ljava/lang/Thread;

    const-string v1, "NetworkProcessor IO Read Thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->networkReadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
