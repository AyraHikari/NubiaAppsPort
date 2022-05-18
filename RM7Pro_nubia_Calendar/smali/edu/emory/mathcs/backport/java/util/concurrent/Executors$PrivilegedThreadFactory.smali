.class Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;
.super Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DefaultThreadFactory;
.source "Executors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrivilegedThreadFactory"
.end annotation


# instance fields
.field private final acc:Ljava/security/AccessControlContext;

.field private final ccl:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 562
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DefaultThreadFactory;-><init>()V

    .line 563
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;->ccl:Ljava/lang/ClassLoader;

    .line 564
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;->acc:Ljava/security/AccessControlContext;

    .line 565
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;->acc:Ljava/security/AccessControlContext;

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "setContextClassLoader"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/AccessControlContext;->checkPermission(Ljava/security/Permission;)V

    .line 566
    return-void
.end method

.method static access$1000(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;)Ljava/security/AccessControlContext;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;

    .prologue
    .line 557
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;->acc:Ljava/security/AccessControlContext;

    return-object v0
.end method

.method static access$800(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;

    .prologue
    .line 557
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;->ccl:Ljava/lang/ClassLoader;

    return-object v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 569
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;

    invoke-direct {v0, p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;Ljava/lang/Runnable;)V

    invoke-super {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DefaultThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method
