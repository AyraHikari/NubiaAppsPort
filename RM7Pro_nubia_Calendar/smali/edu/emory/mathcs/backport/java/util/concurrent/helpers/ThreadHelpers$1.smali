.class Ledu/emory/mathcs/backport/java/util/concurrent/helpers/ThreadHelpers$1;
.super Ljava/lang/Object;
.source "ThreadHelpers.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final val$handler:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/ThreadHelpers$UncaughtExceptionHandler;

.field private final val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ledu/emory/mathcs/backport/java/util/concurrent/helpers/ThreadHelpers$UncaughtExceptionHandler;)V
    .locals 0
    .param p1, "val$runnable"    # Ljava/lang/Runnable;
    .param p2, "val$handler"    # Ledu/emory/mathcs/backport/java/util/concurrent/helpers/ThreadHelpers$UncaughtExceptionHandler;

    .prologue
    .line 32
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/ThreadHelpers$1;->val$runnable:Ljava/lang/Runnable;

    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/ThreadHelpers$1;->val$handler:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/ThreadHelpers$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 34
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/ThreadHelpers$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 38
    .local v0, "error":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/ThreadHelpers$1;->val$handler:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/ThreadHelpers$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/ThreadHelpers$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 40
    :catch_1
    move-exception v1

    goto :goto_0
.end method
