.class public Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor$AbortPolicy;
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
    name = "AbortPolicy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "e"    # Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 1918
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionException;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionException;-><init>()V

    throw v0
.end method
