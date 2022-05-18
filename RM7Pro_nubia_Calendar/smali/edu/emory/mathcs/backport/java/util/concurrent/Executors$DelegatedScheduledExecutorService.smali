.class Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedScheduledExecutorService;
.super Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;
.source "Executors.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelegatedScheduledExecutorService"
.end annotation


# instance fields
.field private final e:Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .param p1, "executor"    # Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 648
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;)V

    .line 649
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedScheduledExecutorService;->e:Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;

    .line 650
    return-void
.end method


# virtual methods
.method public schedule(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledFuture;
    .locals 2
    .param p1, "callable"    # Ledu/emory/mathcs/backport/java/util/concurrent/Callable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .prologue
    .line 655
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedScheduledExecutorService;->e:Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;->schedule(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Ljava/lang/Runnable;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledFuture;
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .prologue
    .line 652
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedScheduledExecutorService;->e:Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledFuture;
    .locals 8
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .prologue
    .line 658
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedScheduledExecutorService;->e:Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledFuture;
    .locals 8
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "delay"    # J
    .param p6, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .prologue
    .line 661
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedScheduledExecutorService;->e:Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method
