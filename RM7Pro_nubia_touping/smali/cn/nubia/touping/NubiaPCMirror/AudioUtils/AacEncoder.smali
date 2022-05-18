.class public Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;
.super Ljava/lang/Object;
.source "AacEncoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "sndcpy"


# instance fields
.field AAC_PROFILE:I

.field BIT_RATE:I

.field BUFFFER_SIZE:I

.field MIME_TYPE:Ljava/lang/String;

.field WAIT_TIME:I

.field private codecName:Ljava/lang/String;

.field private inputBuffers:[Ljava/nio/ByteBuffer;

.field private mAudioConfig:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field final sampleRateType:I


# direct methods
.method public constructor <init>(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;)V
    .locals 1
    .param p1, "audioConfig"    # Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "audio/mp4a-latm"

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->MIME_TYPE:Ljava/lang/String;

    .line 21
    const v0, 0xfa00

    iput v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->BIT_RATE:I

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->AAC_PROFILE:I

    .line 23
    const/16 v0, 0x2710

    iput v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->WAIT_TIME:I

    .line 25
    const/16 v0, 0x800

    iput v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->BUFFFER_SIZE:I

    .line 29
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 160
    const/4 v0, 0x4

    iput v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->sampleRateType:I

    .line 37
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mAudioConfig:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

    .line 38
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->createMediaCodec()Landroid/media/MediaCodec;

    .line 39
    return-void
.end method

.method private addADTStoPacket([BI)V
    .locals 5
    .param p1, "packet"    # [B
    .param p2, "packetLen"    # I

    .prologue
    .line 169
    const/4 v2, 0x2

    .line 170
    .local v2, "profile":I
    const/4 v1, 0x4

    .line 171
    .local v1, "freqIdx":I
    const/4 v0, 0x2

    .line 175
    .local v0, "chanCfg":I
    const/4 v3, 0x0

    const/4 v4, -0x1

    aput-byte v4, p1, v3

    .line 176
    const/4 v3, 0x1

    const/4 v4, -0x7

    aput-byte v4, p1, v3

    .line 177
    const/4 v3, 0x2

    const/16 v4, 0x50

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 178
    const/4 v3, 0x3

    shr-int/lit8 v4, p2, 0xb

    add-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 179
    const/4 v3, 0x4

    and-int/lit16 v4, p2, 0x7ff

    shr-int/lit8 v4, v4, 0x3

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 180
    const/4 v3, 0x5

    and-int/lit8 v4, p2, 0x7

    shl-int/lit8 v4, v4, 0x5

    add-int/lit8 v4, v4, 0x1f

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 181
    const/4 v3, 0x6

    const/4 v4, -0x4

    aput-byte v4, p1, v3

    .line 182
    return-void
.end method

.method private createMediaCodec()Landroid/media/MediaCodec;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 43
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 44
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 45
    .local v4, "mediaCodecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_0

    aget-object v5, v7, v6

    .line 46
    .local v5, "type":Ljava/lang/String;
    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->MIME_TYPE:Ljava/lang/String;

    invoke-static {v5, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 47
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 48
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->codecName:Ljava/lang/String;

    .line 52
    .end local v5    # "type":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->codecName:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 57
    .end local v4    # "mediaCodecInfo":Landroid/media/MediaCodecInfo;
    :cond_1
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->codecName:Ljava/lang/String;

    invoke-static {v6}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 58
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->MIME_TYPE:Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mAudioConfig:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

    invoke-virtual {v7}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->getSampleRate()I

    move-result v7

    iget-object v8, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mAudioConfig:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

    invoke-virtual {v8}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->getChannelCount()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 59
    .local v1, "format":Landroid/media/MediaFormat;
    const-string v6, "aac-profile"

    iget v7, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->AAC_PROFILE:I

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 61
    const-string v6, "bitrate"

    iget v7, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->BIT_RATE:I

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 62
    const-string v6, "sample-rate"

    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mAudioConfig:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

    invoke-virtual {v7}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->getSampleRate()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 63
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mAudioConfig:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

    invoke-virtual {v6}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->getSampleRate()I

    move-result v6

    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mAudioConfig:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

    invoke-virtual {v7}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->getChannelConfig()I

    move-result v7

    iget-object v8, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mAudioConfig:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

    invoke-virtual {v8}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->getAudioFormat()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    .line 64
    .local v3, "maxInputSize":I
    const-string v6, "max-input-size"

    invoke-virtual {v1, v6, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 65
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v1, v7, v8, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1    # "format":Landroid/media/MediaFormat;
    .end local v3    # "maxInputSize":I
    :goto_2
    return-object v10

    .line 45
    .restart local v4    # "mediaCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v5    # "type":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 43
    .end local v5    # "type":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 66
    .end local v4    # "mediaCodecInfo":Landroid/media/MediaCodecInfo;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private getRawPCM()[B
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public encodePcm([BI)Ljava/util/ArrayList;
    .locals 19
    .param p1, "rawPcm"    # [B
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v9, "aacPatchArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/16 v18, 0x0

    .line 100
    .local v18, "rawPcmIndex":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v12, v2, :cond_0

    .line 101
    move/from16 v0, v18

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    .line 113
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v6, 0x2710

    invoke-virtual {v2, v4, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v17

    .line 114
    .local v17, "outputIndex":I
    :goto_1
    if-ltz v17, :cond_2

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v14, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 116
    .local v14, "outBitSize":I
    add-int/lit8 v15, v14, 0x7

    .line 117
    .local v15, "outPacketSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v16, v2, v17

    .line 118
    .local v16, "outputBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v2, v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 120
    new-array v10, v15, [B

    .line 121
    .local v10, "chunkAudio":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->addADTStoPacket([BI)V

    .line 122
    const/4 v2, 0x7

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v2, v14}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 128
    :try_start_0
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v6, 0x2710

    invoke-virtual {v2, v4, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v17

    goto :goto_1

    .line 104
    .end local v10    # "chunkAudio":[B
    .end local v14    # "outBitSize":I
    .end local v15    # "outPacketSize":I
    .end local v16    # "outputBuffer":Ljava/nio/ByteBuffer;
    .end local v17    # "outputIndex":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 105
    .local v3, "inputIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v13, v2, v3

    .line 106
    .local v13, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 107
    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 108
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 110
    move/from16 v18, p2

    .line 100
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 130
    .end local v3    # "inputIndex":I
    .end local v13    # "inputBuffer":Ljava/nio/ByteBuffer;
    .restart local v10    # "chunkAudio":[B
    .restart local v14    # "outBitSize":I
    .restart local v15    # "outPacketSize":I
    .restart local v16    # "outputBuffer":Ljava/nio/ByteBuffer;
    .restart local v17    # "outputIndex":I
    :catch_0
    move-exception v11

    .line 131
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 138
    .end local v10    # "chunkAudio":[B
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v14    # "outBitSize":I
    .end local v15    # "outPacketSize":I
    .end local v16    # "outputBuffer":Ljava/nio/ByteBuffer;
    :cond_2
    return-object v9
.end method

.method public start()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 76
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 78
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 79
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 83
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 85
    return-void
.end method
