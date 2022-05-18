.class Ledu/emory/mathcs/backport/java/util/concurrent/Executors$4;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    .prologue
    .line 498
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$4;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 499
    const/4 v2, 0x0

    .line 500
    .local v2, "savedcl":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 502
    .local v3, "t":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 503
    .local v0, "cl":Ljava/lang/ClassLoader;
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$4;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    invoke-static {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->access$300(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v4

    if-eq v4, v0, :cond_0

    .line 504
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$4;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    invoke-static {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->access$300(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 505
    move-object v2, v0

    .line 507
    :cond_0
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$4;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$4;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    invoke-static {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->access$500(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    move-result-object v5

    invoke-interface {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->access$402(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    if-eqz v2, :cond_1

    .line 512
    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 514
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_1
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 508
    :catch_0
    move-exception v1

    .line 509
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$4;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    invoke-static {v4, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->access$602(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;Ljava/lang/Exception;)Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
    if-eqz v2, :cond_1

    .line 512
    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 511
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    .line 512
    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_2
    throw v4
.end method
