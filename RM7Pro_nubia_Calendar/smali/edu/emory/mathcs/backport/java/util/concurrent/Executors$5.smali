.class Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;

.field private final val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;
    .param p2, "val$r"    # Ljava/lang/Runnable;

    .prologue
    .line 570
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;

    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static access$700(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;)Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;

    .prologue
    .line 570
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;

    return-object v0
.end method

.method static access$900(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;

    .prologue
    .line 570
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;->val$r:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 571
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$6;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$6;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;)V

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$5;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;->access$1000(Ledu/emory/mathcs/backport/java/util/concurrent/Executors$PrivilegedThreadFactory;)Ljava/security/AccessControlContext;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 578
    return-void
.end method
