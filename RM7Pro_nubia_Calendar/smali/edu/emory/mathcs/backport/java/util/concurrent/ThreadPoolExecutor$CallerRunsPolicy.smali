.class public Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;
.super Ljava/lang/Object;
.source "ThreadPoolExecutor.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallerRunsPolicy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "e"    # Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 1894
    invoke-virtual {p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1895
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1897
    :cond_0
    return-void
.end method
