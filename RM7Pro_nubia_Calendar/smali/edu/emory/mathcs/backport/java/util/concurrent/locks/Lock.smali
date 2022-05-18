.class public interface abstract Ledu/emory/mathcs/backport/java/util/concurrent/locks/Lock;
.super Ljava/lang/Object;
.source "Lock.java"


# virtual methods
.method public abstract lock()V
.end method

.method public abstract lockInterruptibly()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract newCondition()Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;
.end method

.method public abstract tryLock()Z
.end method

.method public abstract tryLock(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract unlock()V
.end method
