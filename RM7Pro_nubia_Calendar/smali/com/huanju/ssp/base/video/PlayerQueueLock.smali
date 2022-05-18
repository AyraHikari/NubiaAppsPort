.class public Lcom/huanju/ssp/base/video/PlayerQueueLock;
.super Ljava/lang/Object;
.source "PlayerQueueLock.java"


# static fields
.field private static final SHOW_LOGS:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mProcessQueueCondition:Ljava/util/concurrent/locks/Condition;

.field private final mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/huanju/ssp/base/video/PlayerQueueLock;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerQueueLock;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/PlayerQueueLock;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    iget-object v0, p0, Lcom/huanju/ssp/base/video/PlayerQueueLock;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/video/PlayerQueueLock;->mProcessQueueCondition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public isLocked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "owner"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v1, p0, Lcom/huanju/ssp/base/video/PlayerQueueLock;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    .line 30
    .local v0, "isLocked":Z
    return v0
.end method

.method public lock(Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/huanju/ssp/base/video/PlayerQueueLock;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 19
    return-void
.end method

.method public notify(Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/huanju/ssp/base/video/PlayerQueueLock;->mProcessQueueCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 43
    return-void
.end method

.method public unlock(Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/huanju/ssp/base/video/PlayerQueueLock;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 25
    return-void
.end method

.method public wait(Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huanju/ssp/base/video/PlayerQueueLock;->mProcessQueueCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 37
    return-void
.end method
