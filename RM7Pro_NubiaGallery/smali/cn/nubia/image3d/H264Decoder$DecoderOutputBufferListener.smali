.class public interface abstract Lcn/nubia/image3d/H264Decoder$DecoderOutputBufferListener;
.super Ljava/lang/Object;
.source "H264Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/image3d/H264Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DecoderOutputBufferListener"
.end annotation


# virtual methods
.method public abstract onH264DecoderBufferCallback(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public abstract onH264DecoderOutputFormatChanged(Landroid/media/MediaFormat;)V
.end method
