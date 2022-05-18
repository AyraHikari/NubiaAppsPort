.class public Lorg/apache/commons/lang/time/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# static fields
.field private static final STATE_RUNNING:I = 0x1

.field private static final STATE_SPLIT:I = 0xb

.field private static final STATE_STOPPED:I = 0x2

.field private static final STATE_SUSPENDED:I = 0x3

.field private static final STATE_UNSPLIT:I = 0xa

.field private static final STATE_UNSTARTED:I


# instance fields
.field private runningState:I

.field private splitState:I

.field private startTime:J

.field private stopTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    .line 83
    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->splitState:I

    .line 88
    iput-wide v2, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    .line 93
    iput-wide v2, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 102
    return-void
.end method


# virtual methods
.method public getSplitTime()J
    .locals 4

    .prologue
    .line 290
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->splitState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be split to get the split time. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    iget-wide v2, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 305
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch has not been started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    return-wide v0
.end method

.method public getTime()J
    .locals 4

    .prologue
    .line 264
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 265
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    iget-wide v2, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    sub-long/2addr v0, v2

    .line 269
    :goto_0
    return-wide v0

    .line 266
    :cond_1
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    if-nez v0, :cond_2

    .line 267
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 268
    :cond_2
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 271
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal running state has occured. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    .line 161
    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->splitState:I

    .line 162
    iput-wide v2, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    .line 163
    iput-wide v2, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 164
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    .line 243
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be suspended to resume. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    .line 247
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 248
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    .line 249
    return-void
.end method

.method public split()V
    .locals 2

    .prologue
    .line 180
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch is not running. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 184
    const/16 v0, 0xb

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->splitState:I

    .line 185
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 117
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be reset before being restarted. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    if-eqz v0, :cond_1

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch already started. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    .line 126
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 141
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch is not running. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    if-ne v0, v2, :cond_1

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 147
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    .line 148
    return-void
.end method

.method public suspend()V
    .locals 2

    .prologue
    .line 222
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be running to suspend. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 226
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    .line 227
    return-void
.end method

.method public toSplitString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    invoke-virtual {p0}, Lorg/apache/commons/lang/time/StopWatch;->getSplitTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatDurationHMS(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    invoke-virtual {p0}, Lorg/apache/commons/lang/time/StopWatch;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatDurationHMS(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsplit()V
    .locals 2

    .prologue
    .line 201
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->splitState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch has not been split. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 205
    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->splitState:I

    .line 206
    return-void
.end method
