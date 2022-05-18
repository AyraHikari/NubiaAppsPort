.class public interface abstract Lcn/nubia/videogenerator/common/OutputListener;
.super Ljava/lang/Object;
.source "OutputListener.java"


# virtual methods
.method public abstract isEncoderBufferUpperLimit(I)Z
.end method

.method public abstract isMuxerStarted()Z
.end method

.method public abstract onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
.end method

.method public abstract onOutputComplete(Ljava/lang/String;)V
.end method

.method public abstract onOutputError()V
.end method

.method public abstract onOutputFormatChanged(Landroid/media/MediaFormat;)V
.end method
