.class final Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;
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
    name = "PrivilegedCallable"
.end annotation


# instance fields
.field private final acc:Ljava/security/AccessControlContext;

.field private exception:Ljava/lang/Exception;

.field private result:Ljava/lang/Object;

.field private final task:Ledu/emory/mathcs/backport/java/util/concurrent/Callable;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)V
    .locals 1
    .param p1, "task"    # Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;->task:Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    .line 457
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;->acc:Ljava/security/AccessControlContext;

    .line 458
    return-void
.end method

.method static access$002(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 450
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;->result:Ljava/lang/Object;

    return-object p1
.end method

.method static access$100(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;)Ledu/emory/mathcs/backport/java/util/concurrent/Callable;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;

    .prologue
    .line 450
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;->task:Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    return-object v0
.end method

.method static access$202(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 450
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;->exception:Ljava/lang/Exception;

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
    .line 461
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$3;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$3;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;)V

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;->acc:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 471
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;->exception:Ljava/lang/Exception;

    throw v0

    .line 474
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedCallable;->result:Ljava/lang/Object;

    return-object v0
.end method
