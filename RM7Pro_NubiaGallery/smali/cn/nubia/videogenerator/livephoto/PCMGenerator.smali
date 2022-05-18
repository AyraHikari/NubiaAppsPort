.class public Lcn/nubia/videogenerator/livephoto/PCMGenerator;
.super Ljava/lang/Object;
.source "PCMGenerator.java"


# static fields
.field private static TAG:Ljava/lang/String; = "meeeAudioRecorder"


# instance fields
.field private mAudioParam:Lcn/nubia/videogenerator/codec/AudioParams;

.field private mAudioRecorder:Landroid/media/AudioRecord;

.field private mAudioSource:I

.field private mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMinBufferSize:I

.field private mOutputCacheDurationMs:J

.field private mOutputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/videogenerator/common/AVFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mOutputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 22
    iput-object v0, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mAudioRecorder:Landroid/media/AudioRecord;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/videogenerator/livephoto/PCMGenerator;)J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mOutputCacheDurationMs:J

    return-wide v0
.end method

.method static synthetic access$100(Lcn/nubia/videogenerator/livephoto/PCMGenerator;)Lcn/nubia/videogenerator/codec/AudioParams;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mAudioParam:Lcn/nubia/videogenerator/codec/AudioParams;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/videogenerator/livephoto/PCMGenerator;)I
    .locals 0

    .line 17
    iget p0, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mMinBufferSize:I

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/videogenerator/livephoto/PCMGenerator;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/videogenerator/livephoto/PCMGenerator;)Landroid/media/AudioRecord;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mAudioRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/videogenerator/livephoto/PCMGenerator;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mOutputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mAudioRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mAudioRecorder:Landroid/media/AudioRecord;

    :cond_1
    return-void
.end method

.method public setAudioRecordParam(Lcn/nubia/videogenerator/codec/AudioParams;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mAudioParam:Lcn/nubia/videogenerator/codec/AudioParams;

    return-void
.end method

.method public setAudioSource(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mAudioSource:I

    return-void
.end method

.method public setOutputCacheDuration(I)V
    .locals 2

    int-to-long v0, p1

    .line 39
    iput-wide v0, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mOutputCacheDurationMs:J

    return-void
.end method

.method public setOutputQueue(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/videogenerator/common/AVFrame;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mOutputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public start()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mAudioParam:Lcn/nubia/videogenerator/codec/AudioParams;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/AudioParams;->getSampleRate()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mAudioParam:Lcn/nubia/videogenerator/codec/AudioParams;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/AudioParams;->getChannelLayout()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mAudioParam:Lcn/nubia/videogenerator/codec/AudioParams;

    .line 50
    invoke-virtual {v2}, Lcn/nubia/videogenerator/codec/AudioParams;->getAudioFormat()I

    move-result v2

    .line 49
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mMinBufferSize:I

    .line 51
    new-instance v0, Landroid/media/AudioRecord;

    iget v2, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mAudioSource:I

    iget-object v1, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mAudioParam:Lcn/nubia/videogenerator/codec/AudioParams;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/AudioParams;->getSampleRate()I

    move-result v3

    iget-object v1, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mAudioParam:Lcn/nubia/videogenerator/codec/AudioParams;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/AudioParams;->getChannelLayout()I

    move-result v4

    iget-object v1, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mAudioParam:Lcn/nubia/videogenerator/codec/AudioParams;

    .line 52
    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/AudioParams;->getAudioFormat()I

    move-result v5

    iget v1, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mMinBufferSize:I

    mul-int/lit8 v6, v1, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mAudioRecorder:Landroid/media/AudioRecord;

    .line 54
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 55
    sget-object v0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->TAG:Ljava/lang/String;

    const-string v1, "startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 58
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/videogenerator/livephoto/PCMGenerator$1;

    invoke-direct {v1, p0}, Lcn/nubia/videogenerator/livephoto/PCMGenerator$1;-><init>(Lcn/nubia/videogenerator/livephoto/PCMGenerator;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PCM Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 96
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/livephoto/PCMGenerator;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
