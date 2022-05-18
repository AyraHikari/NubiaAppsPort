.class public Lcn/nubia/videogenerator/codec/CodecRender;
.super Ljava/lang/Object;
.source "CodecRender.java"

# interfaces
.implements Lcn/nubia/videogenerator/common/OutputListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Render"


# instance fields
.field protected mFiller:Lcn/nubia/videogenerator/common/InputBufferFiller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEncoderBufferUpperLimit(I)Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/CodecRender;->mFiller:Lcn/nubia/videogenerator/common/InputBufferFiller;

    invoke-interface {v0, p1}, Lcn/nubia/videogenerator/common/InputBufferFiller;->isBufferUpperLimit(I)Z

    move-result p1

    return p1
.end method

.method public isMuxerStarted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 0

    .line 33
    iget-object p3, p0, Lcn/nubia/videogenerator/codec/CodecRender;->mFiller:Lcn/nubia/videogenerator/common/InputBufferFiller;

    if-eqz p3, :cond_0

    .line 34
    invoke-interface {p3, p1, p2}, Lcn/nubia/videogenerator/common/InputBufferFiller;->fillInputBufferAsync(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_0
    return-void
.end method

.method public onOutputComplete(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onOutputError()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/CodecRender;->mFiller:Lcn/nubia/videogenerator/common/InputBufferFiller;

    invoke-interface {v0}, Lcn/nubia/videogenerator/common/InputBufferFiller;->errorInput()V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method

.method public setDecoder(Lcn/nubia/videogenerator/codec/DataOutput;)V
    .locals 0

    .line 26
    invoke-virtual {p1, p0}, Lcn/nubia/videogenerator/codec/DataOutput;->setOutputListener(Lcn/nubia/videogenerator/common/OutputListener;)V

    return-void
.end method

.method public setFiller(Lcn/nubia/videogenerator/common/InputBufferFiller;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/CodecRender;->mFiller:Lcn/nubia/videogenerator/common/InputBufferFiller;

    return-void
.end method
