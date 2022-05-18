.class public Lcn/nubia/videogenerator/media/SimpleVideoGenerator;
.super Ljava/lang/Object;
.source "SimpleVideoGenerator.java"

# interfaces
.implements Lcn/nubia/videogenerator/common/Generator;
.implements Lcn/nubia/videogenerator/common/OutputListener;


# instance fields
.field private mDegrees:I

.field private mEncoder:Lcn/nubia/videogenerator/codec/Encoder;

.field private mFormats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxDuration:J

.field private mMuxTracks:I

.field private mOnCompleteListener:Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;

.field private mOnProgressListener:Lcn/nubia/videogenerator/common/Generator$OnProgressListener;

.field private mOutputPath:Ljava/lang/String;

.field private mRender:Lcn/nubia/videogenerator/codec/ImageRender;

.field private mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mMuxTracks:I

    .line 26
    iput v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mDegrees:I

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mRender:Lcn/nubia/videogenerator/codec/ImageRender;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mFormats:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mRender:Lcn/nubia/videogenerator/codec/ImageRender;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/ImageRender;->stop()V

    .line 65
    iput-object v1, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mRender:Lcn/nubia/videogenerator/codec/ImageRender;

    .line 67
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Encoder;->cancel()V

    .line 69
    iput-object v1, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    .line 71
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {v0}, Lcn/nubia/videogenerator/writer/MuxerWriter;->stop()V

    .line 73
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/writer/MuxerWriter;->delete()V

    .line 74
    iput-object v1, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    :cond_2
    return-void
.end method

.method public export()V
    .locals 4

    .line 43
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_1

    .line 44
    iget v1, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mMuxTracks:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setMuxTracks(I)V

    .line 45
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget v1, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mDegrees:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setOrientation(I)V

    .line 46
    iget-wide v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mMaxDuration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 47
    iget-object v2, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setMaxDuration(J)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget-object v1, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mOnCompleteListener:Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setOnCompleteListener(Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;)V

    .line 50
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget-object v1, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mOnProgressListener:Lcn/nubia/videogenerator/common/Generator$OnProgressListener;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->setOnProgressListener(Lcn/nubia/videogenerator/common/Generator$OnProgressListener;)V

    .line 52
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {v0, p0}, Lcn/nubia/videogenerator/codec/Encoder;->setOutputListener(Lcn/nubia/videogenerator/common/OutputListener;)V

    .line 54
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Encoder;->start()V

    .line 57
    :cond_2
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mRender:Lcn/nubia/videogenerator/codec/ImageRender;

    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/ImageRender;->startRender()V

    :cond_3
    return-void
.end method

.method public isEncoderBufferUpperLimit(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isMuxerStarted()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/writer/MuxerWriter;->isMuxerStarted()Z

    move-result v0

    return v0
.end method

.method public onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/writer/MuxerWriter;->isMuxerStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/videogenerator/writer/MuxerWriter;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOutputComplete(Ljava/lang/String;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->onOutputComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOutputError()V
    .locals 0

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mFormats:Ljava/util/ArrayList;

    .line 146
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/writer/MuxerWriter;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    :cond_1
    return-void
.end method

.method public setMaxDuration(J)V
    .locals 0

    .line 127
    iput-wide p1, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mMaxDuration:J

    return-void
.end method

.method public setOnCompleteListener(Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mOnCompleteListener:Lcn/nubia/videogenerator/common/Generator$OnCompleteListener;

    return-void
.end method

.method public setOnProgressListener(Lcn/nubia/videogenerator/common/Generator$OnProgressListener;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mOnProgressListener:Lcn/nubia/videogenerator/common/Generator$OnProgressListener;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mDegrees:I

    return-void
.end method

.method public setOutputPath(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mOutputPath:Ljava/lang/String;

    .line 37
    new-instance p1, Lcn/nubia/videogenerator/writer/MuxerWriter;

    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mOutputPath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcn/nubia/videogenerator/writer/MuxerWriter;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    return-void
.end method

.method public setVideoParams(Lcn/nubia/videogenerator/codec/VideoParams;)V
    .locals 5

    .line 98
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-nez v0, :cond_0

    .line 100
    :try_start_0
    new-instance v0, Lcn/nubia/videogenerator/codec/Encoder;

    invoke-direct {v0, p1}, Lcn/nubia/videogenerator/codec/Encoder;-><init>(Lcn/nubia/videogenerator/codec/VideoParams;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    const-wide/32 v1, 0xf4240

    .line 101
    invoke-virtual {p1}, Lcn/nubia/videogenerator/codec/VideoParams;->getFps()I

    move-result p1

    int-to-long v3, p1

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcn/nubia/videogenerator/codec/Encoder;->setFrameInterval(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 106
    :goto_0
    iget p1, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mMuxTracks:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mMuxTracks:I

    :cond_0
    return-void
.end method

.method public setVideoRender(Lcn/nubia/videogenerator/codec/ImageRender;)V
    .locals 1

    .line 112
    iput-object p1, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mRender:Lcn/nubia/videogenerator/codec/ImageRender;

    .line 113
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/codec/Encoder;->setRender(Lcn/nubia/videogenerator/codec/ImageRender;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mRender:Lcn/nubia/videogenerator/codec/ImageRender;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/ImageRender;->stop()V

    .line 85
    iput-object v1, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mRender:Lcn/nubia/videogenerator/codec/ImageRender;

    .line 87
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Encoder;->release()V

    .line 89
    iput-object v1, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mEncoder:Lcn/nubia/videogenerator/codec/Encoder;

    .line 91
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {v0}, Lcn/nubia/videogenerator/writer/MuxerWriter;->stop()V

    .line 93
    iput-object v1, p0, Lcn/nubia/videogenerator/media/SimpleVideoGenerator;->mWriter:Lcn/nubia/videogenerator/writer/MuxerWriter;

    :cond_2
    return-void
.end method
