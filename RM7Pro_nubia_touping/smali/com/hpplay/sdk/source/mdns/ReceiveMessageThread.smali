.class public Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReceiveMessageThread"


# instance fields
.field private isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMsgQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/hpplay/sdk/source/mdns/MessageInfos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;->mMsgQueue:Ljava/util/concurrent/BlockingQueue;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    return-void
.end method


# virtual methods
.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;->interrupt()V

    .line 48
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;->mMsgQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 31
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 32
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 33
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;->mMsgQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MessageInfos;

    .line 36
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/MessageInfos;->getListener()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/MessageInfos;->getIds()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/MessageInfos;->getMessage()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-interface {v1, v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;->receiveMessage(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-string v0, "ReceiveMessageThread"

    const-string v1, "=============>>>ReceiveMessageThread InterruptedException exit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    const-string v0, "ReceiveMessageThread"

    const-string v1, "=============>>> ReceiveMessageThread exit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public declared-synchronized updateReceiveData(Lcom/hpplay/sdk/source/mdns/MessageInfos;)V
    .locals 1

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;->mMsgQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_0
    monitor-exit p0

    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
