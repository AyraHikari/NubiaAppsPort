.class public Lcom/hpplay/sdk/source/process/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/bean/DebugTimestampBean;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/b;->a:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/process/b;->b:I

    .line 17
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/b;->a:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/process/b;->b:I

    .line 22
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 26
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/hpplay/sdk/source/process/b;->b:I

    .line 27
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/b;->a:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->getAudioTSFrames()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 28
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/b;->a:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->getVideoTSFrames()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 29
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/b;->a:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    iget-object v0, v0, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->audioWriteSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 30
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/b;->a:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    iget-object v0, v0, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->videoWriteSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 31
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/b;->a:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    iget-object v0, v0, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->audioReadSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 32
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/b;->a:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    iget-object v0, v0, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->videoReadSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 40
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    move v0, v1

    .line 43
    :cond_0
    :goto_0
    iget v2, p0, Lcom/hpplay/sdk/source/process/b;->b:I

    if-eq v2, v12, :cond_1

    .line 45
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v2

    .line 48
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    :cond_1
    :goto_1
    iget v2, p0, Lcom/hpplay/sdk/source/process/b;->b:I

    if-ne v2, v12, :cond_0

    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    const/4 v2, 0x5

    if-lt v0, v2, :cond_6

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/b;->a:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->getAudioTSFrames()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    .line 57
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/b;->a:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->getVideoTSFrames()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    .line 58
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 59
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/b;->a:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    iget-object v0, v0, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->audioReadSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    .line 60
    iget-object v2, p0, Lcom/hpplay/sdk/source/process/b;->a:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    iget-object v2, v2, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->audioWriteSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v5

    .line 61
    iget-object v2, p0, Lcom/hpplay/sdk/source/process/b;->a:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    iget-object v2, v2, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->audioReadSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move v2, v0

    .line 62
    :goto_2
    if-ge v2, v5, :cond_3

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;

    .line 65
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    const-string v6, "MirrorAudio"

    const-string v7, "serial: %d, capture: %d, encode time: %d, send time: %d"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 69
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->getSerial()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 70
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->getCaptureTS()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 71
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->getEncodeTime()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 72
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->getSendTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v8, v9

    .line 67
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 76
    :cond_3
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 77
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/b;->a:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    iget-object v0, v0, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->videoReadSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    .line 78
    iget-object v2, p0, Lcom/hpplay/sdk/source/process/b;->a:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    iget-object v2, v2, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->videoWriteSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v3

    .line 79
    iget-object v2, p0, Lcom/hpplay/sdk/source/process/b;->a:Lcom/hpplay/sdk/source/bean/DebugTimestampBean;

    iget-object v2, v2, Lcom/hpplay/sdk/source/bean/DebugTimestampBean;->videoReadSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move v2, v0

    .line 80
    :goto_3
    if-ge v2, v3, :cond_5

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    const-string v5, "MirrorVideo"

    const-string v6, "serial: %d, init mediacodec time: %d, send time: %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 87
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->getSerial()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 88
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->getCaptureTS()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 89
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/bean/DebugTimestampInfoBean;->getSendTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v8

    .line 85
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 80
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_5
    move v0, v1

    .line 94
    :cond_6
    const-wide/16 v2, 0x3e8

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 95
    :catch_1
    move-exception v2

    .line 96
    :goto_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 95
    :catch_2
    move-exception v0

    move-object v2, v0

    move v0, v1

    goto :goto_4
.end method
