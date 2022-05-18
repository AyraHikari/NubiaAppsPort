.class public Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;
.super Ljava/lang/Object;
.source "ReentrantReadWriteLock.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReadWriteLock;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;,
        Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;,
        Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;,
        Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3010a43401763536L


# instance fields
.field final readerLock_:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field final sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

.field final writerLock_:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->readerLock_:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 159
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->writerLock_:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 168
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    .line 169
    return-void
.end method


# virtual methods
.method protected getOwner()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public final getQueueLength()I
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getQueueLength()I

    move-result v0

    return v0
.end method

.method public getReadHoldCount()I
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getReadHoldCount()I

    move-result v0

    return v0
.end method

.method public getReadLockCount()I
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getReadLockCount()I

    move-result v0

    return v0
.end method

.method public getWriteHoldCount()I
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getWriteHoldCount()I

    move-result v0

    return v0
.end method

.method public final hasQueuedThreads()Z
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->hasQueuedThreads()Z

    move-result v0

    return v0
.end method

.method public final isFair()Z
    .locals 1

    .prologue
    .line 1091
    const/4 v0, 0x0

    return v0
.end method

.method public isWriteLocked()Z
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isWriteLocked()Z

    move-result v0

    return v0
.end method

.method public isWriteLockedByCurrentThread()Z
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isWriteLockedByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public readLock()Ledu/emory/mathcs/backport/java/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->readerLock_:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1335
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "[Write locks = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", Read locks = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeLock()Ledu/emory/mathcs/backport/java/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->writerLock_:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    return-object v0
.end method
