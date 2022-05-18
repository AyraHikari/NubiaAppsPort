.class final Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PrivilegedCallableUsingCurrentClassLoader"
.end annotation


# instance fields
.field private final acc:Ljava/security/AccessControlContext;

.field private final ccl:Ljava/lang/ClassLoader;

.field private exception:Ljava/lang/Exception;

.field private result:Ljava/lang/Object;

.field private final task:Ledu/emory/mathcs/backport/java/util/concurrent/Callable;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)V
    .locals 3
    .param p1, "task"    # Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->task:Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    .line 490
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->ccl:Ljava/lang/ClassLoader;

    .line 491
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 492
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->acc:Ljava/security/AccessControlContext;

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getContextClassLoader"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/AccessControlContext;->checkPermission(Ljava/security/Permission;)V

    .line 493
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->acc:Ljava/security/AccessControlContext;

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "setContextClassLoader"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/AccessControlContext;->checkPermission(Ljava/security/Permission;)V

    .line 494
    return-void
.end method

.method static access$300(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    .prologue
    .line 482
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->ccl:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static access$402(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 482
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->result:Ljava/lang/Object;

    return-object p1
.end method

.method static access$500(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)Ledu/emory/mathcs/backport/java/util/concurrent/Callable;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    .prologue
    .line 482
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->task:Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    return-object v0
.end method

.method static access$602(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 482
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->exception:Ljava/lang/Exception;

    return-object p1
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 497
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$4;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$4;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)V

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->acc:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 517
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->exception:Ljava/lang/Exception;

    throw v0

    .line 520
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->result:Ljava/lang/Object;

    return-object v0
.end method
