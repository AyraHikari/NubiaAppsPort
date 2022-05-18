.class final Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;
.super Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
.source "ThreadPoolExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Worker"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x552f9a9a47f02c71L


# instance fields
.field volatile completedTasks:J

.field firstTask:Ljava/lang/Runnable;

.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;

.field final thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;
    .param p2, "firstTask"    # Ljava/lang/Runnable;

    .prologue
    .line 568
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 569
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    .line 570
    invoke-virtual {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->getThreadFactory()Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .line 571
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->runWorker(Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$Worker;)V

    .line 576
    return-void
.end method
