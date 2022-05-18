.class Lcom/huanju/ssp/base/video/MessagesHandlerThread$1;
.super Ljava/lang/Object;
.source "MessagesHandlerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/video/MessagesHandlerThread;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/video/MessagesHandlerThread;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/video/MessagesHandlerThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread$1;->this$0:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start worker thread"

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread$1;->this$0:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    invoke-static {v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$100(Lcom/huanju/ssp/base/video/MessagesHandlerThread;)Lcom/huanju/ssp/base/video/PlayerQueueLock;

    move-result-object v1

    invoke-static {}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huanju/ssp/base/video/PlayerQueueLock;->lock(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPlayerMessagesQueue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread$1;->this$0:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    invoke-static {v3}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$200(Lcom/huanju/ssp/base/video/MessagesHandlerThread;)Ljava/util/Queue;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v1, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread$1;->this$0:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    invoke-static {v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$200(Lcom/huanju/ssp/base/video/MessagesHandlerThread;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "queue is empty, wait for new messages"

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v1, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread$1;->this$0:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    invoke-static {v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$100(Lcom/huanju/ssp/base/video/MessagesHandlerThread;)Lcom/huanju/ssp/base/video/PlayerQueueLock;

    move-result-object v1

    invoke-static {}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huanju/ssp/base/video/PlayerQueueLock;->wait(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread$1;->this$0:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    iget-object v1, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread$1;->this$0:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    invoke-static {v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$200(Lcom/huanju/ssp/base/video/MessagesHandlerThread;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/base/video/player_messages/Message;

    invoke-static {v2, v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$302(Lcom/huanju/ssp/base/video/MessagesHandlerThread;Lcom/huanju/ssp/base/video/player_messages/Message;)Lcom/huanju/ssp/base/video/player_messages/Message;

    .line 56
    iget-object v1, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread$1;->this$0:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    invoke-static {v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$300(Lcom/huanju/ssp/base/video/MessagesHandlerThread;)Lcom/huanju/ssp/base/video/player_messages/Message;

    move-result-object v1

    invoke-interface {v1}, Lcom/huanju/ssp/base/video/player_messages/Message;->polledFromQueue()V

    .line 57
    invoke-static {}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "poll mLastMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread$1;->this$0:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    invoke-static {v3}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$300(Lcom/huanju/ssp/base/video/MessagesHandlerThread;)Lcom/huanju/ssp/base/video/player_messages/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v1, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread$1;->this$0:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    invoke-static {v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$100(Lcom/huanju/ssp/base/video/MessagesHandlerThread;)Lcom/huanju/ssp/base/video/PlayerQueueLock;

    move-result-object v1

    invoke-static {}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huanju/ssp/base/video/PlayerQueueLock;->unlock(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run, mLastMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread$1;->this$0:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    invoke-static {v3}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$300(Lcom/huanju/ssp/base/video/MessagesHandlerThread;)Lcom/huanju/ssp/base/video/player_messages/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v1, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread$1;->this$0:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    invoke-static {v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$300(Lcom/huanju/ssp/base/video/MessagesHandlerThread;)Lcom/huanju/ssp/base/video/player_messages/Message;

    move-result-object v1

    invoke-interface {v1}, Lcom/huanju/ssp/base/video/player_messages/Message;->runMessage()V

    .line 63
    iget-object v1, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread$1;->this$0:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    invoke-static {v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$100(Lcom/huanju/ssp/base/video/MessagesHandlerThread;)Lcom/huanju/ssp/base/video/PlayerQueueLock;

    move-result-object v1

    invoke-static {}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huanju/ssp/base/video/PlayerQueueLock;->lock(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread$1;->this$0:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    invoke-static {v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$300(Lcom/huanju/ssp/base/video/MessagesHandlerThread;)Lcom/huanju/ssp/base/video/player_messages/Message;

    move-result-object v1

    invoke-interface {v1}, Lcom/huanju/ssp/base/video/player_messages/Message;->messageFinished()V

    .line 65
    iget-object v1, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread$1;->this$0:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    invoke-static {v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$100(Lcom/huanju/ssp/base/video/MessagesHandlerThread;)Lcom/huanju/ssp/base/video/PlayerQueueLock;

    move-result-object v1

    invoke-static {}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huanju/ssp/base/video/PlayerQueueLock;->unlock(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/huanju/ssp/base/video/MessagesHandlerThread$1;->this$0:Lcom/huanju/ssp/base/video/MessagesHandlerThread;

    invoke-static {v1}, Lcom/huanju/ssp/base/video/MessagesHandlerThread;->access$400(Lcom/huanju/ssp/base/video/MessagesHandlerThread;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 51
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "InterruptedException"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
