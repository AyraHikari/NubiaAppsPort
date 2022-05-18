.class Ledu/emory/mathcs/backport/java/util/concurrent/Executors$3;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;

    .prologue
    .line 462
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$3;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 464
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$3;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;

    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$3;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;

    invoke-static {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;->access$100(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;)Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    move-result-object v2

    invoke-interface {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;->access$002(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$3;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;

    invoke-static {v1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;->access$202(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;Ljava/lang/Exception;)Ljava/lang/Exception;

    goto :goto_0
.end method
