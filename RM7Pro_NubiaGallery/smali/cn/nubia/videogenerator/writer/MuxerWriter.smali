.class public Lcn/nubia/videogenerator/writer/MuxerWriter;
.super Ljava/lang/Object;
.source "MuxerWriter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MuxerWriter"


# instance fields
.field private mAudioPts:J

.field private mCompleteTracks:I

.field private mCurrentProgress:J

.field private mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/videogenerator/common/AVFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxDuration:J

.field private mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerLock:Ljava/lang/Object;

.field private mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mOnCompleteListener:Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;

.field private mOnProgressListener:Lcn/nubia/videogenerator/common/Generator$OnProgressListener;

.field private mPath:Ljava/lang/String;

.field private mTotalTracks:I

.field private mTrackIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoPts:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mTotalTracks:I

    const-wide/16 v1, 0x0

    .line 25
    iput-wide v1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mAudioPts:J

    .line 26
    iput-wide v1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mVideoPts:J

    .line 27
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    .line 28
    iput-object v3, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mPath:Ljava/lang/String;

    .line 29
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mTrackIndex:Ljava/util/HashMap;

    .line 32
    iput v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mCompleteTracks:I

    .line 33
    iput-wide v1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMaxDuration:J

    .line 34
    iput-wide v1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mCurrentProgress:J

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxerLock:Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mPath:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 41
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxer:Landroid/media/MediaMuxer;

    return-void
.end method

.method private declared-synchronized addMediaFormat(Landroid/media/MediaFormat;)V
    .locals 5

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 73
    iget-object v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :try_start_1
    iget-object v1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    .line 76
    iget-object v2, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mTrackIndex:Ljava/util/HashMap;

    const-string v3, "mime"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 76
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object p1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mTrackIndex:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    iget v1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mTotalTracks:I

    if-lt p1, v1, :cond_0

    const-string p1, "MuxerWriter"

    const-string v1, "all tracks have added, start Muxer"

    .line 80
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    .line 82
    iget-object p1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 84
    :cond_0
    :goto_0
    iget-object p1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 85
    iget-object p1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/videogenerator/common/AVFrame;

    const-string v1, "MuxerWriter"

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chenpeng1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, p1, Lcn/nubia/videogenerator/common/AVFrame;->data:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 90
    iget-object v2, p1, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-object p1, p1, Lcn/nubia/videogenerator/common/AVFrame;->mimeType:Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->writeSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    const-string p1, "MuxerWriter"

    const-string v0, "Muxer has started , MediaFormat should not change"

    .line 69
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "MediaFormat changed after MediaMuxer started"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private notifyProgressUpdate(J)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mOnProgressListener:Lcn/nubia/videogenerator/common/Generator$OnProgressListener;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p1, p2}, Lcn/nubia/videogenerator/common/Generator$OnProgressListener;->onProgress(J)V

    :cond_0
    return-void
.end method

.method private updateProgress(JLjava/lang/String;)V
    .locals 4

    .line 120
    iget-wide v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMaxDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const-string v0, "video/"

    .line 121
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iput-wide p1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mVideoPts:J

    goto :goto_0

    :cond_0
    const-string v0, "audio/"

    .line 123
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 124
    iput-wide p1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mAudioPts:J

    .line 126
    :cond_1
    :goto_0
    iget-wide p1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mVideoPts:J

    iget-wide v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mAudioPts:J

    add-long/2addr p1, v0

    const-wide/16 v0, 0x64

    mul-long/2addr p1, v0

    iget-wide v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMaxDuration:J

    iget p3, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mTotalTracks:I

    int-to-long v2, p3

    mul-long/2addr v0, v2

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mCurrentProgress:J

    .line 127
    invoke-direct {p0, p1, p2}, Lcn/nubia/videogenerator/writer/MuxerWriter;->notifyProgressUpdate(J)V

    :cond_2
    return-void
.end method

.method private writeSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 3

    .line 99
    iget-object v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MuxerWriter"

    const-string v1, "Muxer hasn\'t started!"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Lcn/nubia/videogenerator/common/AVFrame;

    invoke-direct {v0}, Lcn/nubia/videogenerator/common/AVFrame;-><init>()V

    .line 102
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/videogenerator/common/AVFrame;->data:[B

    .line 103
    iput-object p2, v0, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 104
    iput-object p3, v0, Lcn/nubia/videogenerator/common/AVFrame;->mimeType:Ljava/lang/String;

    const-string p1, "MuxerWriter"

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "chenpeng0 = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, v0, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, v0, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, v0, Lcn/nubia/videogenerator/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_0
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v0, v1, p3}, Lcn/nubia/videogenerator/writer/MuxerWriter;->updateProgress(JLjava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_1

    .line 112
    iget-object v2, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mTrackIndex:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v1, p3, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 115
    :cond_1
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public delete()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public isMuxerStarted()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/videogenerator/writer/MuxerWriter;->writeSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized onOutputComplete(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 138
    :try_start_0
    iget p1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mCompleteTracks:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mCompleteTracks:I

    iget v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mTotalTracks:I

    if-lt p1, v0, :cond_1

    const-string p1, "MuxerWriter"

    const-string v0, "onOutputComplete"

    .line 139
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-wide v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMaxDuration:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const-wide/16 v0, 0x64

    .line 141
    invoke-direct {p0, v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->notifyProgressUpdate(J)V

    .line 143
    :cond_0
    iget-object p1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mOnCompleteListener:Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;

    if-eqz p1, :cond_1

    .line 144
    invoke-interface {p1}, Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->addMediaFormat(Landroid/media/MediaFormat;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 168
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :try_start_1
    iget-object v1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    .line 172
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 173
    :try_start_2
    iput-object v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 172
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public rename(Ljava/lang/String;)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method public setMaxDuration(J)V
    .locals 0

    .line 206
    iput-wide p1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMaxDuration:J

    return-void
.end method

.method public setMuxTracks(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mTotalTracks:I

    return-void
.end method

.method public setOnCompleteListener(Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mOnCompleteListener:Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;

    return-void
.end method

.method public setOnProgressListener(Lcn/nubia/videogenerator/common/Generator$OnProgressListener;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mOnProgressListener:Lcn/nubia/videogenerator/common/Generator$OnProgressListener;

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 47
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stop()V
    .locals 2

    const-string v0, "MuxerWriter"

    const-string v1, "stop"

    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :try_start_1
    iget-object v1, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    .line 156
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 160
    :goto_0
    iget-object v0, p0, Lcn/nubia/videogenerator/writer/MuxerWriter;->mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/videogenerator/writer/MuxerWriter;->release()V

    :cond_1
    return-void
.end method
