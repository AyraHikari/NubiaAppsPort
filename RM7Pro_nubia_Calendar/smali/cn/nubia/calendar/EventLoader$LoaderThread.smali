.class Lcn/nubia/calendar/EventLoader$LoaderThread;
.super Ljava/lang/Thread;
.source "EventLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoaderThread"
.end annotation


# instance fields
.field mEventLoader:Lcn/nubia/calendar/EventLoader;

.field mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcn/nubia/calendar/EventLoader$LoadRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;Lcn/nubia/calendar/EventLoader;)V
    .locals 0
    .param p2, "eventLoader"    # Lcn/nubia/calendar/EventLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcn/nubia/calendar/EventLoader$LoadRequest;",
            ">;",
            "Lcn/nubia/calendar/EventLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "queue":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Lcn/nubia/calendar/EventLoader$LoadRequest;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 171
    iput-object p1, p0, Lcn/nubia/calendar/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 172
    iput-object p2, p0, Lcn/nubia/calendar/EventLoader$LoaderThread;->mEventLoader:Lcn/nubia/calendar/EventLoader;

    .line 173
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 188
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 191
    :goto_0
    :try_start_0
    const-string v2, "EventLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoaderThread run begin Thread Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v2, p0, Lcn/nubia/calendar/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/EventLoader$LoadRequest;

    .line 197
    .local v1, "request":Lcn/nubia/calendar/EventLoader$LoadRequest;
    :goto_1
    iget-object v2, p0, Lcn/nubia/calendar/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    iget-object v2, p0, Lcn/nubia/calendar/EventLoader$LoaderThread;->mEventLoader:Lcn/nubia/calendar/EventLoader;

    invoke-interface {v1, v2}, Lcn/nubia/calendar/EventLoader$LoadRequest;->skipRequest(Lcn/nubia/calendar/EventLoader;)V

    .line 202
    iget-object v2, p0, Lcn/nubia/calendar/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "request":Lcn/nubia/calendar/EventLoader$LoadRequest;
    check-cast v1, Lcn/nubia/calendar/EventLoader$LoadRequest;

    .restart local v1    # "request":Lcn/nubia/calendar/EventLoader$LoadRequest;
    goto :goto_1

    .line 205
    :cond_0
    instance-of v2, v1, Lcn/nubia/calendar/EventLoader$ShutdownRequest;

    if-eqz v2, :cond_1

    .line 206
    const-string v2, "EventLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoaderThread return  Thread Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void

    .line 209
    :cond_1
    iget-object v2, p0, Lcn/nubia/calendar/EventLoader$LoaderThread;->mEventLoader:Lcn/nubia/calendar/EventLoader;

    invoke-interface {v1, v2}, Lcn/nubia/calendar/EventLoader$LoadRequest;->processRequest(Lcn/nubia/calendar/EventLoader;)V

    .line 210
    const-string v2, "EventLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoaderThread end  Thread Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 211
    .end local v1    # "request":Lcn/nubia/calendar/EventLoader$LoadRequest;
    :catch_0
    move-exception v0

    .line 212
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v2, "EventLoader"

    const-string v3, "LoaderThread InterruptedException "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 176
    const-string v0, "EventLoader"

    const-string v1, "shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :try_start_0
    iget-object v0, p0, Lcn/nubia/calendar/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcn/nubia/calendar/EventLoader$ShutdownRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/nubia/calendar/EventLoader$ShutdownRequest;-><init>(Lcn/nubia/calendar/EventLoader$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    goto :goto_0
.end method
