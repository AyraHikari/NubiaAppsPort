.class Ledu/emory/mathcs/backport/java/util/concurrent/Executors$FinalizableDelegatedExecutorService;
.super Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;
.source "Executors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FinalizableDelegatedExecutorService"
.end annotation


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "executor"    # Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;

    .prologue
    .line 632
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;)V

    .line 633
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 635
    invoke-super {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;->shutdown()V

    .line 636
    return-void
.end method
