.class public Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;
.super Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;
.source "FIFOWaitQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2188efa4f99726fbL


# instance fields
.field protected transient head_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

.field protected transient tail_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;-><init>()V

    .line 18
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;->head_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    .line 19
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;->tail_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    .line 21
    return-void
.end method


# virtual methods
.method public extract()Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;->head_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 41
    :goto_0
    return-object v0

    .line 36
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;->head_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    .line 37
    .local v0, "w":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
    iget-object v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->next:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    iput-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;->head_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    .line 38
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;->head_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    if-nez v2, :cond_1

    .line 39
    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;->tail_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    .line 40
    :cond_1
    iput-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->next:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    goto :goto_0
.end method

.method public getLength()I
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "count":I
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;->head_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    .line 59
    .local v1, "node":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
    :goto_0
    if-eqz v1, :cond_1

    .line 60
    iget-boolean v2, v1, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->waiting:Z

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 61
    :cond_0
    iget-object v1, v1, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->next:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    goto :goto_0

    .line 63
    :cond_1
    return v0
.end method

.method public getWaitingThreads()Ljava/util/Collection;
    .locals 4

    .prologue
    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v1, "list":Ljava/util/List;
    const/4 v0, 0x0

    .line 69
    .local v0, "count":I
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;->head_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    .line 70
    .local v2, "node":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
    :goto_0
    if-eqz v2, :cond_1

    .line 71
    iget-boolean v3, v2, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->waiting:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->owner:Ljava/lang/Thread;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->next:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    goto :goto_0

    .line 74
    :cond_1
    return-object v1
.end method

.method public hasNodes()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;->head_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;)V
    .locals 1
    .param p1, "w"    # Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    .prologue
    .line 24
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;->tail_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    if-nez v0, :cond_0

    .line 25
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;->tail_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;->head_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    .line 30
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;->tail_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    iput-object p1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->next:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    .line 28
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;->tail_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    goto :goto_0
.end method

.method public isWaiting(Ljava/lang/Thread;)Z
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 78
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 79
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;->head_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    .local v0, "node":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
    :goto_0
    if-eqz v0, :cond_2

    .line 80
    iget-boolean v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->waiting:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->owner:Ljava/lang/Thread;

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    .line 82
    :goto_1
    return v1

    .line 79
    :cond_1
    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->next:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    goto :goto_0

    .line 82
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public putBack(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;)V
    .locals 1
    .param p1, "w"    # Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    .prologue
    .line 46
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;->head_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    iput-object v0, p1, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->next:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    .line 47
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;->head_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    .line 48
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;->tail_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    if-nez v0, :cond_0

    .line 49
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;->tail_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    .line 50
    :cond_0
    return-void
.end method
