.class public Lcom/hpplay/cybergarage/util/ThreadCore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mThreadObject:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/util/ThreadCore;->mThreadObject:Ljava/lang/Thread;

    .line 27
    return-void
.end method


# virtual methods
.method public getThreadObject()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/hpplay/cybergarage/util/ThreadCore;->mThreadObject:Ljava/lang/Thread;

    return-object v0
.end method

.method public isRunnable()Z
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/util/ThreadCore;->getThreadObject()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restart()V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/util/ThreadCore;->stop()V

    .line 74
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/util/ThreadCore;->start()V

    .line 75
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public setThreadObject(Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/hpplay/cybergarage/util/ThreadCore;->mThreadObject:Ljava/lang/Thread;

    .line 37
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/util/ThreadCore;->getThreadObject()Ljava/lang/Thread;

    move-result-object v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Cyber.ThreadCore"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/util/ThreadCore;->setThreadObject(Ljava/lang/Thread;)V

    .line 48
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/util/ThreadCore;->getThreadObject()Ljava/lang/Thread;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/util/ThreadCore;->setThreadObject(Ljava/lang/Thread;)V

    .line 70
    :cond_0
    return-void
.end method
