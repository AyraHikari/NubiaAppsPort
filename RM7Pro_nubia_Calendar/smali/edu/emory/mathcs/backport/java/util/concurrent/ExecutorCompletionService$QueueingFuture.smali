.class Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService$QueueingFuture;
.super Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;
.source "ExecutorCompletionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueingFuture"
.end annotation


# instance fields
.field private final task:Ledu/emory/mathcs/backport/java/util/concurrent/Future;

.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;)V
    .locals 1
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;
    .param p2, "task"    # Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;

    .prologue
    .line 90
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService$QueueingFuture;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 92
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService$QueueingFuture;->task:Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    .line 93
    return-void
.end method


# virtual methods
.method protected done()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService$QueueingFuture;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->access$000(Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;)Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService$QueueingFuture;->task:Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    invoke-interface {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
