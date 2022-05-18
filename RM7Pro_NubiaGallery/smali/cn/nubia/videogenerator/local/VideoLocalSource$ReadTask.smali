.class public Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;
.super Ljava/lang/Object;
.source "VideoLocalSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/local/VideoLocalSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;


# direct methods
.method public constructor <init>(Lcn/nubia/videogenerator/local/VideoLocalSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    .line 132
    iget-object v0, p1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    iget-object p1, p1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->selectTrack()V

    return-void
.end method

.method private selectTrack()V
    .locals 6

    .line 137
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v0, v0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 140
    iget-object v2, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v2, v2, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 142
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v0, v0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 144
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iput-object v2, v0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mFormat:Landroid/media/MediaFormat;

    .line 145
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v1, v0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mMimetype:Ljava/lang/String;

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
    .locals 15

    const/high16 v0, 0x200000

    .line 153
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 154
    :goto_0
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v1, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v1, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    invoke-interface {v1}, Lcn/nubia/videogenerator/common/OutputListener;->isMuxerStarted()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget v1, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mTrimType:I

    const-string v2, "read EOS break"

    const-string v3, "VideoLocalSource"

    const/4 v4, 0x0

    if-nez v1, :cond_7

    .line 158
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-wide v5, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mStartMs:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-lez v1, :cond_2

    .line 159
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-boolean v1, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mPreciseTrim:Z

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-wide v5, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mStartMs:J

    invoke-static {v1, v5, v6}, Lcn/nubia/videogenerator/local/VideoLocalSource;->access$000(Lcn/nubia/videogenerator/local/VideoLocalSource;J)V

    .line 161
    :goto_1
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-boolean v1, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mIsReading:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v1, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mCodecListener:Lcn/nubia/videogenerator/common/CodecListener;

    .line 162
    invoke-interface {v1}, Lcn/nubia/videogenerator/common/CodecListener;->isEmptyOfInputQueue()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 165
    :cond_1
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-wide v5, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mStartMs:J

    invoke-static {v1, v5, v6}, Lcn/nubia/videogenerator/local/VideoLocalSource;->access$100(Lcn/nubia/videogenerator/local/VideoLocalSource;J)I

    move-result v1

    if-gez v1, :cond_2

    .line 166
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iput-boolean v4, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mIsReading:Z

    :cond_2
    const-string v1, "start inner video trim"

    .line 170
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_2
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-boolean v1, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mIsReading:Z

    if-eqz v1, :cond_11

    .line 172
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 174
    iget-object v5, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v5, v5, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5, v0, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    iput v5, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 176
    iget-object v5, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-wide v5, v5, Lcn/nubia/videogenerator/local/VideoLocalSource;->mStartMs:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    .line 177
    iget-object v5, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-wide v5, v5, Lcn/nubia/videogenerator/local/VideoLocalSource;->mVideoPts:J

    iget-object v9, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v9, v9, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    .line 178
    invoke-virtual {v9}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    add-long/2addr v5, v9

    iput-wide v5, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_3

    .line 180
    :cond_3
    iget-object v5, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-wide v5, v5, Lcn/nubia/videogenerator/local/VideoLocalSource;->mVideoPts:J

    iget-object v9, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v9, v9, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    .line 181
    invoke-virtual {v9}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    iget-object v11, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-wide v11, v11, Lcn/nubia/videogenerator/local/VideoLocalSource;->IFramePts:J

    sub-long/2addr v9, v11

    add-long/2addr v5, v9

    iput-wide v5, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 184
    :goto_3
    :try_start_0
    iget-object v5, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v5, v5, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v5

    iput v5, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    .line 186
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 188
    :goto_4
    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v5, :cond_6

    iget-object v5, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v5, v5, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    .line 189
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    iget-object v9, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-wide v9, v9, Lcn/nubia/videogenerator/local/VideoLocalSource;->mEndMs:J

    cmp-long v5, v5, v9

    if-ltz v5, :cond_4

    goto :goto_5

    .line 197
    :cond_4
    iget-object v5, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v5, v5, Lcn/nubia/videogenerator/local/VideoLocalSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    if-eqz v5, :cond_5

    .line 198
    iget-object v5, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v5, v5, Lcn/nubia/videogenerator/local/VideoLocalSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    iget-object v6, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v6, v6, Lcn/nubia/videogenerator/local/VideoLocalSource;->mMimetype:Ljava/lang/String;

    invoke-interface {v5, v0, v1, v6}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 201
    :cond_5
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v1, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_2

    .line 190
    :cond_6
    :goto_5
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iput-boolean v4, v0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mIsReading:Z

    .line 192
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v0, v0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    if-eqz v0, :cond_11

    .line 193
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v0, v0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v1, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mMimetype:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputComplete(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 203
    :cond_7
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget v1, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mTrimType:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_11

    .line 205
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-wide v6, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mEndMs:J

    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-wide v8, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mStartMs:J

    sub-long/2addr v6, v8

    const-string v1, "start outer video trim"

    .line 206
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 207
    :goto_6
    iget-object v8, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-boolean v8, v8, Lcn/nubia/videogenerator/local/VideoLocalSource;->mIsReading:Z

    if-eqz v8, :cond_11

    .line 208
    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 209
    iget-object v9, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v9, v9, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v9, v0, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v9

    iput v9, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v1, :cond_c

    .line 211
    iget-object v9, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v9, v9, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    .line 212
    invoke-virtual {v9}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    iget-object v11, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-wide v11, v11, Lcn/nubia/videogenerator/local/VideoLocalSource;->mStartMs:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_c

    .line 214
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-wide v8, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mEndMs:J

    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-wide v10, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mVideoDuration:J

    cmp-long v1, v8, v10

    if-gez v1, :cond_b

    .line 215
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-boolean v1, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mPreciseTrim:Z

    if-eqz v1, :cond_8

    .line 216
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-wide v8, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mEndMs:J

    invoke-static {v1, v8, v9}, Lcn/nubia/videogenerator/local/VideoLocalSource;->access$100(Lcn/nubia/videogenerator/local/VideoLocalSource;J)I

    .line 217
    :goto_7
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-boolean v1, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mIsReading:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v1, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mCodecListener:Lcn/nubia/videogenerator/common/CodecListener;

    .line 219
    invoke-interface {v1}, Lcn/nubia/videogenerator/common/CodecListener;->isEmptyOfInputQueue()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_7

    .line 222
    :cond_8
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-wide v8, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mEndMs:J

    invoke-static {v1, v8, v9}, Lcn/nubia/videogenerator/local/VideoLocalSource;->access$100(Lcn/nubia/videogenerator/local/VideoLocalSource;J)I

    move-result v1

    if-gez v1, :cond_9

    goto/16 :goto_b

    .line 227
    :cond_9
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v1, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-wide v10, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mEndMs:J

    cmp-long v1, v8, v10

    if-gez v1, :cond_a

    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-boolean v1, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mPreciseTrim:Z

    if-eqz v1, :cond_a

    .line 229
    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-wide v8, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mEndMs:J

    iget-object v10, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v10, v10, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v1, v8, v9}, Lcn/nubia/videogenerator/local/VideoLocalSource;->access$202(Lcn/nubia/videogenerator/local/VideoLocalSource;J)J

    .line 231
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mEndMs = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-wide v8, v8, Lcn/nubia/videogenerator/local/VideoLocalSource;->mEndMs:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v8, v8, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    .line 232
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    goto/16 :goto_6

    .line 235
    :cond_b
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iput-boolean v4, v0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mIsReading:Z

    .line 236
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v0, v0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    if-eqz v0, :cond_11

    .line 237
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v0, v0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v1, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mMimetype:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputComplete(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_c
    if-eqz v1, :cond_d

    .line 244
    iget-object v9, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-wide v9, v9, Lcn/nubia/videogenerator/local/VideoLocalSource;->mVideoPts:J

    iget-object v11, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v11, v11, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    .line 245
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    iget-object v13, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    invoke-static {v13}, Lcn/nubia/videogenerator/local/VideoLocalSource;->access$200(Lcn/nubia/videogenerator/local/VideoLocalSource;)J

    move-result-wide v13

    add-long/2addr v11, v13

    sub-long/2addr v11, v6

    add-long/2addr v9, v11

    iput-wide v9, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_8

    .line 247
    :cond_d
    iget-object v9, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-wide v9, v9, Lcn/nubia/videogenerator/local/VideoLocalSource;->mVideoPts:J

    iget-object v11, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v11, v11, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    .line 248
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    add-long/2addr v9, v11

    iput-wide v9, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 251
    :goto_8
    :try_start_1
    iget-object v9, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v9, v9, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v9

    iput v9, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception v9

    .line 253
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 256
    :goto_9
    iget v9, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v9, :cond_10

    iget-object v9, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v9, v9, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    .line 257
    invoke-virtual {v9}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    iget-object v11, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-wide v11, v11, Lcn/nubia/videogenerator/local/VideoLocalSource;->mVideoDuration:J

    iget-object v13, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    .line 258
    invoke-static {v13}, Lcn/nubia/videogenerator/local/VideoLocalSource;->access$200(Lcn/nubia/videogenerator/local/VideoLocalSource;)J

    move-result-wide v13

    sub-long/2addr v11, v13

    cmp-long v9, v9, v11

    if-ltz v9, :cond_e

    goto :goto_a

    .line 266
    :cond_e
    iget-object v9, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v9, v9, Lcn/nubia/videogenerator/local/VideoLocalSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    if-eqz v9, :cond_f

    .line 267
    iget-object v9, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v9, v9, Lcn/nubia/videogenerator/local/VideoLocalSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    iget-object v10, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v10, v10, Lcn/nubia/videogenerator/local/VideoLocalSource;->mMimetype:Ljava/lang/String;

    invoke-interface {v9, v0, v8, v10}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 270
    :cond_f
    iget-object v8, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v8, v8, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_6

    .line 259
    :cond_10
    :goto_a
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iput-boolean v4, v0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mIsReading:Z

    .line 261
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v0, v0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    if-eqz v0, :cond_11

    .line 262
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v0, v0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v1, v1, Lcn/nubia/videogenerator/local/VideoLocalSource;->mMimetype:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputComplete(Ljava/lang/String;)V

    :cond_11
    :goto_b
    const-string v0, "**** release Extractor ****"

    .line 273
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mDecoderDataListener:Lcn/nubia/videogenerator/common/DecoderDataListener;

    .line 275
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iput-object v1, v0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mListener:Lcn/nubia/videogenerator/common/OutputListener;

    .line 276
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iput-object v1, v0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mCodecListener:Lcn/nubia/videogenerator/common/CodecListener;

    .line 277
    iget-object v0, p0, Lcn/nubia/videogenerator/local/VideoLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/VideoLocalSource;

    iget-object v0, v0, Lcn/nubia/videogenerator/local/VideoLocalSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    return-void
.end method
