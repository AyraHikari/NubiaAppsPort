.class public Lcom/hpplay/sdk/source/mdns/net/DNSParserThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DNSParserThread"


# instance fields
.field private isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDispatcher:Lcom/hpplay/sdk/source/mdns/net/PacketListener;

.field private mPacketQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/hpplay/sdk/source/mdns/net/Packet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/net/PacketListener;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/DNSParserThread;->mPacketQueue:Ljava/util/concurrent/BlockingQueue;

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/DNSParserThread;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    const-string v0, "DNSParserThread"

    const-string v1, "DNSParserThread create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/net/DNSParserThread;->mDispatcher:Lcom/hpplay/sdk/source/mdns/net/PacketListener;

    .line 22
    return-void
.end method


# virtual methods
.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    const-string v0, "DNSParserThread"

    const-string v1, "  release ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/DNSParserThread;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/net/DNSParserThread;->interrupt()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/DNSParserThread;->mDispatcher:Lcom/hpplay/sdk/source/mdns/net/PacketListener;

    .line 54
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/DNSParserThread;->mPacketQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 33
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/DNSParserThread;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/DNSParserThread;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/net/DNSParserThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/DNSParserThread;->mPacketQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/net/Packet;

    .line 38
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/net/DNSParserThread;->mDispatcher:Lcom/hpplay/sdk/source/mdns/net/PacketListener;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/net/DNSParserThread;->mDispatcher:Lcom/hpplay/sdk/source/mdns/net/PacketListener;

    invoke-interface {v1, v0}, Lcom/hpplay/sdk/source/mdns/net/PacketListener;->packetReceived(Lcom/hpplay/sdk/source/mdns/net/Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    const-string v0, "DNSParserThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  InterruptedException exit..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_1
    const-string v0, "DNSParserThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DNSParserThread exit..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public declared-synchronized updateReceiveData(Lcom/hpplay/sdk/source/mdns/net/Packet;)V
    .locals 1

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/DNSParserThread;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/DNSParserThread;->mPacketQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_0
    monitor-exit p0

    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
