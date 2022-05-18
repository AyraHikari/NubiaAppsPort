.class public Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;
.super Ljava/lang/Object;
.source "AudioLocalSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/local/AudioLocalSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadTask"
.end annotation


# instance fields
.field private mExtractor:Landroid/media/MediaExtractor;

.field private packet:[B

.field packetLen:I

.field final synthetic this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;


# direct methods
.method public constructor <init>(Lcn/nubia/videogenerator/local/AudioLocalSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    new-array v1, v0, [B

    .line 139
    iput-object v1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->packet:[B

    .line 140
    iput v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->packetLen:I

    .line 143
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    .line 144
    invoke-static {p1}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$000(Lcn/nubia/videogenerator/local/AudioLocalSource;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->selectTrack()V

    return-void
.end method

.method private muteDate()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->packet:[B

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, -0x7

    .line 166
    aput-byte v2, v0, v1

    const/16 v1, 0x50

    int-to-byte v1, v1

    const/4 v2, 0x2

    .line 167
    aput-byte v1, v0, v2

    .line 168
    iget v1, p0, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->packetLen:I

    shr-int/lit8 v2, v1, 0xb

    const/16 v3, 0x80

    add-int/2addr v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    and-int/lit16 v2, v1, 0x7ff

    shr-int/2addr v2, v3

    int-to-byte v2, v2

    const/4 v3, 0x4

    .line 169
    aput-byte v2, v0, v3

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x5

    shl-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1f

    int-to-byte v1, v1

    .line 170
    aput-byte v1, v0, v2

    const/4 v1, 0x6

    const/4 v2, -0x4

    .line 171
    aput-byte v2, v0, v1

    return-void
.end method

.method private selectTrack()V
    .locals 5

    .line 149
    iget-object v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 151
    iget-object v2, p0, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 152
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "audio/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    iget-object v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 154
    iget-object v0, p0, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v0, v2}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$102(Lcn/nubia/videogenerator/local/AudioLocalSource;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

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
    .locals 26

    move-object/from16 v1, p0

    const/16 v2, 0x4000

    .line 175
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 176
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 177
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 183
    :try_start_0
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$200(Lcn/nubia/videogenerator/local/AudioLocalSource;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "AudioLocalSource"

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    if-nez v6, :cond_2

    :try_start_1
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$300(Lcn/nubia/videogenerator/local/AudioLocalSource;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 184
    :goto_0
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$400(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/OutputListener;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 185
    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$400(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/OutputListener;

    move-result-object v6

    invoke-interface {v6}, Lcn/nubia/videogenerator/common/OutputListener;->isMuxerStarted()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->muteDate()V

    .line 188
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6, v2, v10}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v6

    iput v6, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 189
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    iput v6, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 190
    iput v10, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 191
    iput-wide v8, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 193
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$400(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/OutputListener;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 194
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$400(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/OutputListener;

    move-result-object v6

    iget-object v11, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 195
    invoke-static {v11}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$500(Lcn/nubia/videogenerator/local/AudioLocalSource;)Ljava/lang/String;

    move-result-object v11

    .line 194
    invoke-interface {v6, v2, v4, v11}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 198
    :cond_1
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->advance()Z

    .line 199
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    const/4 v6, 0x7

    .line 201
    iput v6, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 202
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 203
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->packet:[B

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 204
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "headPresentationTimeUs ="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-wide v11, v8

    :goto_1
    move-wide v13, v11

    .line 208
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$600(Lcn/nubia/videogenerator/local/AudioLocalSource;)I

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$200(Lcn/nubia/videogenerator/local/AudioLocalSource;)I

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 209
    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$700(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v15

    cmp-long v6, v15, v8

    if-lez v6, :cond_3

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$300(Lcn/nubia/videogenerator/local/AudioLocalSource;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 210
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v15, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v15}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$700(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :cond_3
    move v8, v10

    const-wide/16 v18, 0x0

    .line 214
    :goto_2
    iget-object v9, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v9}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$800(Lcn/nubia/videogenerator/local/AudioLocalSource;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 215
    iget-object v9, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v9}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$300(Lcn/nubia/videogenerator/local/AudioLocalSource;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 216
    iget-object v9, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v9}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$900(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/DecoderDataListener;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v9, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 217
    invoke-static {v9}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$900(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/DecoderDataListener;

    move-result-object v9

    const/16 v15, 0x64

    invoke-interface {v9, v15}, Lcn/nubia/videogenerator/common/DecoderDataListener;->isBufferUpperLimit(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 218
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v20, 0xa

    .line 219
    invoke-static/range {v20 .. v21}, Landroid/os/SystemClock;->sleep(J)V

    move v15, v10

    const/4 v6, 0x1

    goto/16 :goto_b

    .line 222
    :cond_4
    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 223
    iget-object v15, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v15, v3, v10}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v15

    iput v15, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 225
    iget-object v15, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    .line 226
    invoke-virtual {v15}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    iput-wide v5, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 227
    iget-object v5, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v5}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$600(Lcn/nubia/videogenerator/local/AudioLocalSource;)I

    move-result v5

    if-gez v5, :cond_5

    iget-object v5, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v5}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1000(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v5

    move-wide/from16 v22, v11

    iget-wide v10, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long/2addr v5, v10

    iget-object v10, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v10}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1100(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v10

    cmp-long v5, v5, v10

    if-gtz v5, :cond_6

    goto :goto_3

    :cond_5
    move-wide/from16 v22, v11

    :goto_3
    iget-object v5, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 228
    invoke-static {v5}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$600(Lcn/nubia/videogenerator/local/AudioLocalSource;)I

    move-result v5

    if-ltz v5, :cond_7

    iget-object v5, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v5}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1000(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v5

    iget-wide v10, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long/2addr v5, v10

    iget-object v10, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v10}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1200(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v10

    cmp-long v5, v5, v10

    if-lez v5, :cond_7

    :cond_6
    const-string v2, "need decode read EOS break"

    .line 229
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 230
    iput v2, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v4, 0x4

    .line 231
    iput v4, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 232
    iget-object v4, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v4, v2}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$802(Lcn/nubia/videogenerator/local/AudioLocalSource;Z)Z

    .line 233
    iget-object v2, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$900(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/DecoderDataListener;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 234
    iget-object v2, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$900(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/DecoderDataListener;

    move-result-object v2

    invoke-interface {v2, v3, v9}, Lcn/nubia/videogenerator/common/DecoderDataListener;->onDecoderDataCopy(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_e

    .line 240
    :cond_7
    iget v5, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v5, :cond_8

    .line 241
    iget-object v5, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v5}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1000(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v9

    add-long v9, v9, v22

    invoke-static {v5, v9, v10}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1002(Lcn/nubia/videogenerator/local/AudioLocalSource;J)J

    .line 242
    iget-object v5, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual {v5, v9, v10, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_5

    .line 245
    :cond_8
    iget-wide v5, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 246
    iget-object v10, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v10}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$900(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/DecoderDataListener;

    move-result-object v10

    if-eqz v10, :cond_9

    iget-object v10, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v10}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$800(Lcn/nubia/videogenerator/local/AudioLocalSource;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 247
    iget-object v10, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v10}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$900(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/DecoderDataListener;

    move-result-object v10

    invoke-interface {v10, v3, v9}, Lcn/nubia/videogenerator/common/DecoderDataListener;->onDecoderDataCopy(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_9
    move-wide v11, v5

    :goto_4
    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    goto/16 :goto_d

    :cond_a
    move-wide/from16 v22, v11

    .line 252
    iget-object v5, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v5}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$400(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/OutputListener;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 253
    invoke-static {v5}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$400(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/OutputListener;

    move-result-object v5

    invoke-interface {v5}, Lcn/nubia/videogenerator/common/OutputListener;->isMuxerStarted()Z

    move-result v5

    if-nez v5, :cond_b

    :goto_5
    move-wide/from16 v11, v22

    :goto_6
    const/4 v6, 0x1

    const/4 v15, 0x0

    goto/16 :goto_b

    .line 255
    :cond_b
    iget-object v5, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v5}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$600(Lcn/nubia/videogenerator/local/AudioLocalSource;)I

    move-result v5

    if-gez v5, :cond_10

    .line 256
    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 257
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    const/4 v9, 0x0

    invoke-virtual {v6, v3, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v6

    iput v6, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 259
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1000(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v9

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    .line 260
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    add-long/2addr v9, v11

    iput-wide v9, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 262
    iget-wide v9, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1100(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v11

    cmp-long v6, v9, v11

    if-lez v6, :cond_d

    const/4 v6, 0x0

    .line 263
    iput v6, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 264
    iget-object v2, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$400(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/OutputListener;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 265
    iget-object v2, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$400(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/OutputListener;

    move-result-object v2

    iget-object v3, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v3}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$500(Lcn/nubia/videogenerator/local/AudioLocalSource;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputComplete(Ljava/lang/String;)V

    .line 267
    :cond_c
    iget-object v2, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$802(Lcn/nubia/videogenerator/local/AudioLocalSource;Z)Z

    goto/16 :goto_e

    .line 270
    :cond_d
    iget v6, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v6, :cond_e

    .line 271
    iget-object v5, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    move-wide/from16 v11, v22

    invoke-static {v5, v11, v12}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1002(Lcn/nubia/videogenerator/local/AudioLocalSource;J)J

    .line 272
    iget-object v5, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual {v5, v9, v10, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_6

    .line 275
    :cond_e
    iget-wide v9, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 276
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$400(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/OutputListener;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 277
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$400(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/OutputListener;

    move-result-object v6

    iget-object v11, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 278
    invoke-static {v11}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$500(Lcn/nubia/videogenerator/local/AudioLocalSource;)Ljava/lang/String;

    move-result-object v11

    .line 277
    invoke-interface {v6, v3, v5, v11}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    :cond_f
    move-wide v11, v9

    goto/16 :goto_4

    :cond_10
    move-wide/from16 v11, v22

    .line 282
    iget-object v5, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v5}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1300(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmp-long v5, v5, v9

    if-lez v5, :cond_12

    iget-object v5, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 283
    invoke-static {v5}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$200(Lcn/nubia/videogenerator/local/AudioLocalSource;)I

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 284
    invoke-static {v5}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1300(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v5

    cmp-long v5, v11, v5

    if-gez v5, :cond_12

    .line 285
    iput-wide v11, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long/2addr v11, v13

    .line 287
    iget-object v5, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v5}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$400(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/OutputListener;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 288
    iget-object v5, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v5}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$400(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/OutputListener;

    move-result-object v5

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 290
    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$500(Lcn/nubia/videogenerator/local/AudioLocalSource;)Ljava/lang/String;

    move-result-object v6

    .line 288
    invoke-interface {v5, v2, v4, v6}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    :cond_11
    :goto_7
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 294
    :cond_12
    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 295
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    const/4 v9, 0x0

    invoke-virtual {v6, v3, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v6

    iput v6, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 297
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    iput v6, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 298
    iput v9, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 299
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$200(Lcn/nubia/videogenerator/local/AudioLocalSource;)I

    move-result v6

    if-nez v6, :cond_16

    .line 300
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$600(Lcn/nubia/videogenerator/local/AudioLocalSource;)I

    move-result v6

    if-nez v6, :cond_14

    .line 301
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1000(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v22

    add-long v9, v9, v22

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$700(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v22

    cmp-long v6, v9, v22

    if-gez v6, :cond_13

    .line 302
    iput-wide v11, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto/16 :goto_8

    .line 304
    :cond_13
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1000(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v9

    add-long/2addr v9, v11

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    .line 306
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v22

    add-long v9, v9, v22

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 307
    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$700(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v22

    sub-long v9, v9, v22

    iput-wide v9, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_8

    .line 309
    :cond_14
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$600(Lcn/nubia/videogenerator/local/AudioLocalSource;)I

    move-result v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_15

    if-nez v8, :cond_15

    .line 311
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1000(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v9

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 312
    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1300(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v22

    add-long v9, v9, v22

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    .line 313
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v22

    add-long v9, v9, v22

    iput-wide v9, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_8

    .line 314
    :cond_15
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$600(Lcn/nubia/videogenerator/local/AudioLocalSource;)I

    move-result v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_17

    if-eqz v8, :cond_17

    .line 316
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1000(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v9

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 317
    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1300(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v22

    add-long v9, v9, v22

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    .line 318
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v22

    add-long v9, v9, v22

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 319
    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1400(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v22

    sub-long v9, v9, v22

    iput-wide v9, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_8

    .line 321
    :cond_16
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$200(Lcn/nubia/videogenerator/local/AudioLocalSource;)I

    move-result v6

    const/4 v9, 0x2

    if-ne v6, v9, :cond_17

    .line 322
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1000(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v9

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    .line 323
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v22

    add-long v9, v9, v22

    iput-wide v9, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 326
    :cond_17
    :goto_8
    iget-wide v9, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1200(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v22

    cmp-long v6, v9, v22

    if-lez v6, :cond_19

    const/4 v6, 0x0

    .line 327
    iput v6, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    const-string v2, "local audio read EOS break"

    .line 328
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v2, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$400(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/OutputListener;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 330
    iget-object v2, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$400(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/OutputListener;

    move-result-object v2

    iget-object v3, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v3}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$500(Lcn/nubia/videogenerator/local/AudioLocalSource;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputComplete(Ljava/lang/String;)V

    .line 332
    :cond_18
    iget-object v2, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$802(Lcn/nubia/videogenerator/local/AudioLocalSource;Z)Z

    goto/16 :goto_e

    .line 335
    :cond_19
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$600(Lcn/nubia/videogenerator/local/AudioLocalSource;)I

    move-result v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_1c

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 336
    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$200(Lcn/nubia/videogenerator/local/AudioLocalSource;)I

    move-result v6

    if-nez v6, :cond_1b

    iget-wide v9, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 337
    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$700(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v22

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 338
    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1300(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v24

    add-long v22, v22, v24

    cmp-long v6, v9, v22

    if-lez v6, :cond_1b

    if-nez v8, :cond_1b

    const-string v5, "start second half trim"

    .line 340
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEndMs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1500(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 343
    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1100(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 342
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v5, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v5}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1500(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v5

    iget-object v8, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v8}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1100(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v8

    cmp-long v5, v5, v8

    if-gtz v5, :cond_1a

    .line 345
    iget-object v5, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1500(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v8

    const/4 v6, 0x1

    invoke-virtual {v5, v8, v9, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_9

    :cond_1a
    const/4 v6, 0x1

    :goto_9
    move v8, v6

    goto/16 :goto_7

    :cond_1b
    const/4 v6, 0x1

    goto :goto_a

    :cond_1c
    move v6, v9

    .line 351
    :goto_a
    iget v9, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v9, :cond_1d

    .line 352
    iget-object v5, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v5}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1000(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v9

    add-long v9, v9, v18

    invoke-static {v5, v9, v10}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1002(Lcn/nubia/videogenerator/local/AudioLocalSource;J)J

    .line 353
    iget-object v5, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v9, 0x0

    const/4 v15, 0x0

    invoke-virtual {v5, v9, v10, v15}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_b
    move v10, v15

    goto/16 :goto_2

    :cond_1d
    const/4 v15, 0x0

    .line 356
    iget-object v9, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v9}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$400(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/OutputListener;

    move-result-object v9

    if-eqz v9, :cond_20

    iget-wide v9, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v16, 0x0

    cmp-long v9, v9, v16

    if-nez v9, :cond_1e

    cmp-long v9, v18, v16

    if-eqz v9, :cond_1f

    :cond_1e
    iget-wide v9, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 357
    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$1000(Lcn/nubia/videogenerator/local/AudioLocalSource;)J

    move-result-wide v22

    add-long v22, v22, v18

    cmp-long v6, v9, v22

    if-lez v6, :cond_21

    .line 359
    :cond_1f
    iget-object v6, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$400(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/OutputListener;

    move-result-object v6

    iget-object v9, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    .line 360
    invoke-static {v9}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$500(Lcn/nubia/videogenerator/local/AudioLocalSource;)Ljava/lang/String;

    move-result-object v9

    .line 359
    invoke-interface {v6, v3, v5, v9}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    goto :goto_c

    :cond_20
    const-wide/16 v16, 0x0

    .line 362
    :cond_21
    :goto_c
    iget-wide v5, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v18, v5

    .line 366
    :goto_d
    iget-object v5, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_f

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 370
    :try_start_2
    iget-object v3, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v3}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$400(Lcn/nubia/videogenerator/local/AudioLocalSource;)Lcn/nubia/videogenerator/common/OutputListener;

    move-result-object v3

    invoke-interface {v3}, Lcn/nubia/videogenerator/common/OutputListener;->onOutputError()V

    .line 371
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    :cond_22
    :goto_e
    iget-object v2, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$902(Lcn/nubia/videogenerator/local/AudioLocalSource;Lcn/nubia/videogenerator/common/DecoderDataListener;)Lcn/nubia/videogenerator/common/DecoderDataListener;

    .line 374
    iget-object v2, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v2, v3}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$402(Lcn/nubia/videogenerator/local/AudioLocalSource;Lcn/nubia/videogenerator/common/OutputListener;)Lcn/nubia/videogenerator/common/OutputListener;

    .line 375
    iget-object v2, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    return-void

    .line 373
    :goto_f
    iget-object v3, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$902(Lcn/nubia/videogenerator/local/AudioLocalSource;Lcn/nubia/videogenerator/common/DecoderDataListener;)Lcn/nubia/videogenerator/common/DecoderDataListener;

    .line 374
    iget-object v3, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/videogenerator/local/AudioLocalSource;

    invoke-static {v3, v4}, Lcn/nubia/videogenerator/local/AudioLocalSource;->access$402(Lcn/nubia/videogenerator/local/AudioLocalSource;Lcn/nubia/videogenerator/common/OutputListener;)Lcn/nubia/videogenerator/common/OutputListener;

    .line 375
    iget-object v3, v1, Lcn/nubia/videogenerator/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    .line 376
    throw v2
.end method
