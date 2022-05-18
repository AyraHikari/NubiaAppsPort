.class public Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;
.super Ljava/lang/Object;
.source "VideoEditorSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/local/VideoEditorSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;


# direct methods
.method public constructor <init>(Lcn/nubia/videogenerator/local/VideoEditorSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p1, Lcn/nubia/videogenerator/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    .line 38
    iget-object v0, p1, Lcn/nubia/videogenerator/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    iget-object p1, p1, Lcn/nubia/videogenerator/local/VideoEditorSource;->mPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->selectTrack()V

    return-void
.end method

.method private selectTrack()V
    .locals 6

    .line 43
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 45
    iget-object v2, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v2, v2, Lcn/nubia/videogenerator/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 47
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 49
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iput-object v2, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mFormat:Landroid/media/MediaFormat;

    .line 50
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v1, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mMimetype:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/high16 v0, 0x200000

    .line 58
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget v1, v1, Lcn/nubia/videogenerator/local/VideoEditorSource;->mTrimType:I

    const-string v2, "read EOS break"

    const/4 v3, 0x4

    const/4 v4, 0x1

    const-string v5, "VideoEditorSource"

    const/4 v6, 0x0

    if-nez v1, :cond_5

    .line 60
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-wide v7, v1, Lcn/nubia/videogenerator/local/VideoEditorSource;->mStartMs:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-lez v1, :cond_0

    .line 61
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v1, v1, Lcn/nubia/videogenerator/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v7, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-wide v7, v7, Lcn/nubia/videogenerator/local/VideoEditorSource;->mStartMs:J

    invoke-virtual {v1, v7, v8, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :cond_0
    const-string v1, "start read video"

    .line 64
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-boolean v1, v1, Lcn/nubia/videogenerator/local/VideoEditorSource;->mIsReading:Z

    if-eqz v1, :cond_d

    .line 66
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v1, v1, Lcn/nubia/videogenerator/local/VideoEditorSource;->mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v1, v1, Lcn/nubia/videogenerator/local/VideoEditorSource;->mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

    const/16 v4, 0x14

    .line 67
    invoke-interface {v1, v4}, Lcn/nubia/videogenerator/common/DecoderDataListener;->isBufferUpperLimit(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v7, 0x32

    .line 69
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 72
    :cond_1
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 74
    iget-object v4, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v4, v4, Lcn/nubia/videogenerator/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v0, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    iput v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 75
    iget-object v4, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v4, v4, Lcn/nubia/videogenerator/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    iput-wide v7, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 76
    iput v6, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 78
    :try_start_0
    iget-object v4, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v4, v4, Lcn/nubia/videogenerator/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v4

    iput v4, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 80
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 82
    :goto_1
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v4, :cond_3

    iget-object v4, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v4, v4, Lcn/nubia/videogenerator/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    .line 83
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    iget-object v4, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-wide v9, v4, Lcn/nubia/videogenerator/local/VideoEditorSource;->mEndMs:J

    cmp-long v4, v7, v9

    if-ltz v4, :cond_2

    goto :goto_2

    .line 98
    :cond_2
    iget-object v4, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v4, v4, Lcn/nubia/videogenerator/local/VideoEditorSource;->mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

    invoke-interface {v4, v0, v1}, Lcn/nubia/videogenerator/common/DecoderDataListener;->onDecoderDataCopy(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 100
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v1, v1, Lcn/nubia/videogenerator/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 84
    :cond_3
    :goto_2
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput v6, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 86
    iput v3, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 87
    iget-object v2, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v2, v2, Lcn/nubia/videogenerator/local/VideoEditorSource;->mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

    invoke-interface {v2, v0, v1}, Lcn/nubia/videogenerator/common/DecoderDataListener;->onDecoderDataCopy(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 89
    :goto_3
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-boolean v0, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mIsReading:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mCodecListener:Lcn/nubia/videogenerator/common/CodecListener;

    .line 90
    invoke-interface {v0}, Lcn/nubia/videogenerator/common/CodecListener;->isEmptyOfInputQueue()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    .line 92
    :cond_4
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iput-boolean v6, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mIsReading:Z

    .line 93
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    if-eqz v0, :cond_d

    .line 94
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v1, v1, Lcn/nubia/videogenerator/local/VideoEditorSource;->mMimetype:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputComplete(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 102
    :cond_5
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget v1, v1, Lcn/nubia/videogenerator/local/VideoEditorSource;->mTrimType:I

    if-ne v1, v4, :cond_d

    move v1, v6

    .line 104
    :goto_4
    iget-object v7, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-boolean v7, v7, Lcn/nubia/videogenerator/local/VideoEditorSource;->mIsReading:Z

    if-eqz v7, :cond_d

    .line 105
    iget-object v7, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v7, v7, Lcn/nubia/videogenerator/local/VideoEditorSource;->mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v7, v7, Lcn/nubia/videogenerator/local/VideoEditorSource;->mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

    const/16 v8, 0x32

    .line 106
    invoke-interface {v7, v8}, Lcn/nubia/videogenerator/common/DecoderDataListener;->isBufferUpperLimit(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 107
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v7, 0x14

    .line 108
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_4

    .line 111
    :cond_6
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 113
    iget-object v8, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v8, v8, Lcn/nubia/videogenerator/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8, v0, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v8

    iput v8, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 114
    iget-object v8, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v8, v8, Lcn/nubia/videogenerator/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 115
    iput v6, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 117
    :try_start_1
    iget-object v8, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v8, v8, Lcn/nubia/videogenerator/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v8

    iput v8, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v8

    .line 119
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_5
    if-nez v1, :cond_9

    .line 121
    iget-object v8, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v8, v8, Lcn/nubia/videogenerator/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    .line 122
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iget-object v10, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-wide v10, v10, Lcn/nubia/videogenerator/local/VideoEditorSource;->mStartMs:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_9

    .line 124
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-wide v8, v1, Lcn/nubia/videogenerator/local/VideoEditorSource;->mEndMs:J

    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-wide v10, v1, Lcn/nubia/videogenerator/local/VideoEditorSource;->mVideoDuration:J

    cmp-long v1, v8, v10

    if-gez v1, :cond_7

    .line 125
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v1, v1, Lcn/nubia/videogenerator/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v7, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-wide v7, v7, Lcn/nubia/videogenerator/local/VideoEditorSource;->mEndMs:J

    invoke-virtual {v1, v7, v8, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mEndMs = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-wide v7, v7, Lcn/nubia/videogenerator/local/VideoEditorSource;->mEndMs:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v7, v7, Lcn/nubia/videogenerator/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    .line 128
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto/16 :goto_4

    .line 131
    :cond_7
    iput v6, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 132
    iput v3, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 133
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v1, v1, Lcn/nubia/videogenerator/local/VideoEditorSource;->mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

    invoke-interface {v1, v0, v7}, Lcn/nubia/videogenerator/common/DecoderDataListener;->onDecoderDataCopy(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 135
    :goto_6
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-boolean v0, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mIsReading:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mCodecListener:Lcn/nubia/videogenerator/common/CodecListener;

    .line 136
    invoke-interface {v0}, Lcn/nubia/videogenerator/common/CodecListener;->isEmptyOfInputQueue()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_6

    .line 138
    :cond_8
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iput-boolean v6, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mIsReading:Z

    .line 139
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    if-eqz v0, :cond_d

    .line 140
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v1, v1, Lcn/nubia/videogenerator/local/VideoEditorSource;->mMimetype:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputComplete(Ljava/lang/String;)V

    goto :goto_9

    .line 146
    :cond_9
    iget v8, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v8, :cond_b

    iget-object v8, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v8, v8, Lcn/nubia/videogenerator/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    .line 147
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iget-object v10, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-wide v10, v10, Lcn/nubia/videogenerator/local/VideoEditorSource;->mVideoDuration:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_a

    goto :goto_7

    .line 162
    :cond_a
    iget-object v8, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v8, v8, Lcn/nubia/videogenerator/local/VideoEditorSource;->mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

    invoke-interface {v8, v0, v7}, Lcn/nubia/videogenerator/common/DecoderDataListener;->onDecoderDataCopy(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 164
    iget-object v7, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v7, v7, Lcn/nubia/videogenerator/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_4

    .line 148
    :cond_b
    :goto_7
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iput v6, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 150
    iput v3, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 151
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v1, v1, Lcn/nubia/videogenerator/local/VideoEditorSource;->mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

    invoke-interface {v1, v0, v7}, Lcn/nubia/videogenerator/common/DecoderDataListener;->onDecoderDataCopy(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 153
    :goto_8
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-boolean v0, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mIsReading:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mCodecListener:Lcn/nubia/videogenerator/common/CodecListener;

    .line 154
    invoke-interface {v0}, Lcn/nubia/videogenerator/common/CodecListener;->isEmptyOfInputQueue()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_8

    .line 156
    :cond_c
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iput-boolean v6, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mIsReading:Z

    .line 157
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    if-eqz v0, :cond_d

    .line 158
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v1, v1, Lcn/nubia/videogenerator/local/VideoEditorSource;->mMimetype:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputComplete(Ljava/lang/String;)V

    :cond_d
    :goto_9
    const-string v0, "**** release Extractor ****"

    .line 167
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

    .line 169
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iput-object v1, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    .line 170
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iput-object v1, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mCodecListener:Lcn/nubia/videogenerator/common/CodecListener;

    .line 171
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    return-void
.end method
