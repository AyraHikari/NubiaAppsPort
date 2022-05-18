.class Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;
.super Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;
.source "ScheduledThreadPoolExecutor.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScheduledFutureTask"
.end annotation


# instance fields
.field heapIndex:I

.field private final period:J

.field private final sequenceNumber:J

.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;

.field private time:J


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;Ledu/emory/mathcs/backport/java/util/concurrent/Callable;J)V
    .locals 3
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;
    .param p2, "callable"    # Ledu/emory/mathcs/backport/java/util/concurrent/Callable;
    .param p3, "ns"    # J

    .prologue
    .line 194
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;

    .line 195
    invoke-direct {p0, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)V

    .line 196
    iput-wide p3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    .line 197
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    .line 198
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->access$000()Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    .line 199
    return-void
.end method

.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 2
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "result"    # Ljava/lang/Object;
    .param p4, "ns"    # J

    .prologue
    .line 174
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;

    .line 175
    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 176
    iput-wide p4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    .line 177
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    .line 178
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->access$000()Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    .line 179
    return-void
.end method

.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;JJ)V
    .locals 2
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "result"    # Ljava/lang/Object;
    .param p4, "ns"    # J
    .param p6, "period"    # J

    .prologue
    .line 184
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;

    .line 185
    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 186
    iput-wide p4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    .line 187
    iput-wide p6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    .line 188
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->access$000()Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    .line 189
    return-void
.end method

.method static access$201(Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;)V
    .locals 0
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    .prologue
    .line 151
    invoke-super {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->run()V

    return-void
.end method

.method static access$301(Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;)Z
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    .prologue
    .line 151
    invoke-super {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->runAndReset()Z

    move-result v0

    return v0
.end method

.method private setNextRunTime()V
    .locals 4

    .prologue
    .line 240
    iget-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    .line 241
    .local v0, "p":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 242
    iget-wide v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->now()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    goto :goto_0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 248
    invoke-super {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    .line 249
    .local v0, "cancelled":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->access$100(Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->heapIndex:I

    if-ltz v1, :cond_0

    .line 250
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 251
    :cond_0
    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 10
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 207
    move-object v4, p1

    check-cast v4, Ledu/emory/mathcs/backport/java/util/concurrent/Delayed;

    .line 208
    .local v4, "otherd":Ledu/emory/mathcs/backport/java/util/concurrent/Delayed;
    if-ne v4, p0, :cond_0

    .line 209
    const/4 v6, 0x0

    .line 224
    :goto_0
    return v6

    .line 210
    :cond_0
    instance-of v6, v4, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    if-eqz v6, :cond_4

    move-object v5, p1

    .line 211
    check-cast v5, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    .line 212
    .local v5, "x":Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;
    iget-wide v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    iget-wide v8, v5, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    sub-long v2, v6, v8

    .line 213
    .local v2, "diff":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_1

    .line 214
    const/4 v6, -0x1

    goto :goto_0

    .line 215
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    .line 216
    const/4 v6, 0x1

    goto :goto_0

    .line 217
    :cond_2
    iget-wide v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    iget-wide v8, v5, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->sequenceNumber:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 218
    const/4 v6, -0x1

    goto :goto_0

    .line 220
    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    .line 222
    .end local v2    # "diff":J
    .end local v5    # "x":Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;
    :cond_4
    sget-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-virtual {p0, v6}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->getDelay(Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)J

    move-result-wide v6

    sget-object v8, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-interface {v4, v8}, Ledu/emory/mathcs/backport/java/util/concurrent/Delayed;->getDelay(Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 224
    .local v0, "d":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_5

    const/4 v6, 0x0

    goto :goto_0

    :cond_5
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_6

    const/4 v6, -0x1

    goto :goto_0

    :cond_6
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public getDelay(Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)J
    .locals 6
    .param p1, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .prologue
    .line 202
    iget-wide v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->time:J

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->now()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v4, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->convert(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 203
    .local v0, "d":J
    return-wide v0
.end method

.method public isPeriodic()Z
    .locals 4

    .prologue
    .line 233
    iget-wide v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->period:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->isPeriodic()Z

    move-result v0

    .line 259
    .local v0, "periodic":Z
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->canRunInCurrentRunState(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 260
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->cancel(Z)Z

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    if-nez v0, :cond_2

    .line 262
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->access$201(Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;)V

    goto :goto_0

    .line 263
    :cond_2
    invoke-static {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->access$301(Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->setNextRunTime()V

    .line 265
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->reExecutePeriodic(Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)V

    goto :goto_0
.end method
