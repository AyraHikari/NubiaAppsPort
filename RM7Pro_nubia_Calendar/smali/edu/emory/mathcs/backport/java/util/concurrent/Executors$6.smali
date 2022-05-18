.class Ledu/emory/mathcs/backport/java/util/concurrent/Executors$6;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final this$1:Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;)V
    .locals 0
    .param p1, "this$1"    # Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;

    .prologue
    .line 572
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$6;->this$1:Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 573
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$6;->this$1:Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;->access$700(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;)Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;

    move-result-object v1

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;->access$800(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;)Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 574
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$6;->this$1:Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;->access$900(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 575
    const/4 v0, 0x0

    return-object v0
.end method
