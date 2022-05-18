.class public abstract Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;
.super Ljava/lang/Object;
.source "WaitQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;,
        Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public abstract extract()Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
.end method

.method public abstract getLength()I
.end method

.method public abstract getWaitingThreads()Ljava/util/Collection;
.end method

.method public abstract hasNodes()Z
.end method

.method public abstract insert(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;)V
.end method

.method public abstract isWaiting(Ljava/lang/Thread;)Z
.end method

.method public abstract putBack(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;)V
.end method
