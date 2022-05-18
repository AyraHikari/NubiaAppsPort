.class Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DefaultThreadFactory;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultThreadFactory"
.end annotation


# static fields
.field static final poolNumber:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final group:Ljava/lang/ThreadGroup;

.field final namePrefix:Ljava/lang/String;

.field final threadNumber:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 528
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DefaultThreadFactory;->poolNumber:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DefaultThreadFactory;->threadNumber:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    .line 534
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 535
    .local v0, "s":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/SecurityManager;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DefaultThreadFactory;->group:Ljava/lang/ThreadGroup;

    .line 537
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "pool-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DefaultThreadFactory;->poolNumber:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "-thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DefaultThreadFactory;->namePrefix:Ljava/lang/String;

    .line 540
    return-void

    .line 535
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 7
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    const/4 v6, 0x5

    .line 543
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DefaultThreadFactory;->group:Ljava/lang/ThreadGroup;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DefaultThreadFactory;->namePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DefaultThreadFactory;->threadNumber:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 546
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->isDaemon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 548
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    if-eq v1, v6, :cond_1

    .line 549
    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setPriority(I)V

    .line 550
    :cond_1
    return-object v0
.end method
