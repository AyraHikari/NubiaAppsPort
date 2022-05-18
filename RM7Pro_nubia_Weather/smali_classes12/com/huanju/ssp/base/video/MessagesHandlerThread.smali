.class public Lcom/huanju/ssp/base/video/MessagesHandlerThread;
.super Ljava/lang/Object;
.source "MessagesHandlerThread.java"


# static fields
.field private static final SHOW_LOGS:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLastMessage:Lcom/huanju/ssp/base/video/player_messages/Message;

.field private final mPlayerMessagesQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/huanju/ssp/base/video/player_messages/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueueLock:Lcom/huanju/ssp/base/video/PlayerQueueLock;

.field private final mQueueProcessingThread:Ljava/util/concurrent/Executor;

.field private mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mPlayerMessagesQueue:Ljava/util/Queue;

    .line 27
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerQueueLock;

    invoke-direct {v0}, Lcom/huanju/ssp/base/video/PlayerQueueLock;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mQueueLock:Lcom/huanju/ssp/base/video/PlayerQueueLock;

    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mQueueProcessingThread:Ljava/util/concurrent/Executor;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    iget-object v0, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mQueueProcessingThread:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/huanju/ssp/base/video/MessagesHandlerThread$1;

    invoke-direct {v1, p0}, Lcom/huanju/ssp/base/video/MessagesHandlerThread$1;-><init>(Lcom/huanju/ssp/base/video/MessagesHandlerThread;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huanju/ssp/base/video/MessagesHandlerThread;)Lcom/huanju/ssp/base/video/PlayerQueueLock;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mQueueLock:Lcom/huanju/ssp/base/video/PlayerQueueLock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huanju/ssp/base/video/MessagesHandlerThread;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mPlayerMessagesQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huanju/ssp/base/video/MessagesHandlerThread;)Lcom/huanju/ssp/base/video/player_messages/Message;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mLastMessage:Lcom/huanju/ssp/base/video/player_messages/Message;

    return-object v0
.end method

.method static synthetic access$302(Lcom/huanju/ssp/base/video/MessagesHandlerThread;Lcom/huanju/ssp/base/video/player_messages/Message;)Lcom/huanju/ssp/base/video/player_messages/Message;
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/video/MessagesHandlerThread;
    .param p1, "x1"    # Lcom/huanju/ssp/base/video/player_messages/Message;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mLastMessage:Lcom/huanju/ssp/base/video/player_messages/Message;

    return-object p1
.end method

.method static synthetic access$400(Lcom/huanju/ssp/base/video/MessagesHandlerThread;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public addMessage(Lcom/huanju/ssp/base/video/player_messages/Message;)V
    .locals 3
    .param p1, "message"    # Lcom/huanju/ssp/base/video/player_messages/Message;

    .prologue
    .line 78
    sget-object v0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> addMessage, lock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mQueueLock:Lcom/huanju/ssp/base/video/PlayerQueueLock;

    sget-object v1, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/PlayerQueueLock;->lock(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mPlayerMessagesQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mQueueLock:Lcom/huanju/ssp/base/video/PlayerQueueLock;

    sget-object v1, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/PlayerQueueLock;->notify(Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< addMessage, unlock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mQueueLock:Lcom/huanju/ssp/base/video/PlayerQueueLock;

    sget-object v1, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/PlayerQueueLock;->unlock(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public addMessages(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/huanju/ssp/base/video/player_messages/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/huanju/ssp/base/video/player_messages/Message;>;"
    sget-object v0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> addMessages, lock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mQueueLock:Lcom/huanju/ssp/base/video/PlayerQueueLock;

    sget-object v1, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/PlayerQueueLock;->lock(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mPlayerMessagesQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 96
    iget-object v0, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mQueueLock:Lcom/huanju/ssp/base/video/PlayerQueueLock;

    sget-object v1, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/PlayerQueueLock;->notify(Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< addMessages, unlock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mQueueLock:Lcom/huanju/ssp/base/video/PlayerQueueLock;

    sget-object v1, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/video/PlayerQueueLock;->unlock(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public clearAllPendingMessages(Ljava/lang/String;)V
    .locals 3
    .param p1, "outer"    # Ljava/lang/String;

    .prologue
    .line 113
    sget-object v0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> clearAllPendingMessages, mPlayerMessagesQueue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mPlayerMessagesQueue:Ljava/util/Queue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mQueueLock:Lcom/huanju/ssp/base/video/PlayerQueueLock;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/base/video/PlayerQueueLock;->isLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mPlayerMessagesQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 120
    sget-object v0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< clearAllPendingMessages, mPlayerMessagesQueue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mPlayerMessagesQueue:Ljava/util/Queue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot perform action, you are not holding a lock"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pauseQueueProcessing(Ljava/lang/String;)V
    .locals 3
    .param p1, "outer"    # Ljava/lang/String;

    .prologue
    .line 103
    sget-object v0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseQueueProcessing, lock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mQueueLock:Lcom/huanju/ssp/base/video/PlayerQueueLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mQueueLock:Lcom/huanju/ssp/base/video/PlayerQueueLock;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/base/video/PlayerQueueLock;->lock(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public resumeQueueProcessing(Ljava/lang/String;)V
    .locals 3
    .param p1, "outer"    # Ljava/lang/String;

    .prologue
    .line 108
    sget-object v0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeQueueProcessing, unlock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mQueueLock:Lcom/huanju/ssp/base/video/PlayerQueueLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mQueueLock:Lcom/huanju/ssp/base/video/PlayerQueueLock;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/base/video/PlayerQueueLock;->unlock(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public terminate()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 125
    return-void
.end method
