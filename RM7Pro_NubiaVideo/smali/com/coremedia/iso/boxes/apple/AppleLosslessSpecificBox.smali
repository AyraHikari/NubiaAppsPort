.class public final Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SourceFile"


# static fields
.field public static final TYPE:Ljava/lang/String; = "alac"


# instance fields
.field private bitRate:J

.field private channels:I

.field private historyMult:I

.field private initialHistory:I

.field private kModifier:I

.field private maxCodedFrameSize:J

.field private maxSamplePerFrame:J

.field private sampleRate:J

.field private sampleSize:I

.field private unknown1:I

.field private unknown2:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "alac"

    .line 1
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 2
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->maxSamplePerFrame:J

    .line 3
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->unknown1:I

    .line 4
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->sampleSize:I

    .line 5
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->historyMult:I

    .line 6
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->initialHistory:I

    .line 7
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->kModifier:I

    .line 8
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->channels:I

    .line 9
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->unknown2:I

    .line 10
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->maxCodedFrameSize:J

    .line 11
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->bitRate:J

    .line 12
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->sampleRate:J

    return-void
.end method

.method public getBitRate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->bitRate:J

    return-wide v0
.end method

.method public getChannels()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->channels:I

    return v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 2
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->maxSamplePerFrame:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 3
    iget v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->unknown1:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 4
    iget v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->sampleSize:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 5
    iget v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->historyMult:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 6
    iget v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->initialHistory:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 7
    iget v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->kModifier:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 8
    iget v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->channels:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 9
    iget v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->unknown2:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 10
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->maxCodedFrameSize:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 11
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->bitRate:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 12
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->sampleRate:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    const-wide/16 v0, 0x1c

    return-wide v0
.end method

.method public getHistoryMult()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->historyMult:I

    return v0
.end method

.method public getInitialHistory()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->initialHistory:I

    return v0
.end method

.method public getKModifier()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->kModifier:I

    return v0
.end method

.method public getMaxCodedFrameSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->maxCodedFrameSize:J

    return-wide v0
.end method

.method public getMaxSamplePerFrame()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->maxSamplePerFrame:J

    return-wide v0
.end method

.method public getSampleRate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->sampleRate:J

    return-wide v0
.end method

.method public getSampleSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->sampleSize:I

    return v0
.end method

.method public getUnknown1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->unknown1:I

    return v0
.end method

.method public getUnknown2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->unknown2:I

    return v0
.end method

.method public setBitRate(I)V
    .locals 2

    int-to-long v0, p1

    .line 1
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->bitRate:J

    return-void
.end method

.method public setChannels(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->channels:I

    return-void
.end method

.method public setHistoryMult(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->historyMult:I

    return-void
.end method

.method public setInitialHistory(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->initialHistory:I

    return-void
.end method

.method public setKModifier(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->kModifier:I

    return-void
.end method

.method public setMaxCodedFrameSize(I)V
    .locals 2

    int-to-long v0, p1

    .line 1
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->maxCodedFrameSize:J

    return-void
.end method

.method public setMaxSamplePerFrame(I)V
    .locals 2

    int-to-long v0, p1

    .line 1
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->maxSamplePerFrame:J

    return-void
.end method

.method public setSampleRate(I)V
    .locals 2

    int-to-long v0, p1

    .line 1
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->sampleRate:J

    return-void
.end method

.method public setSampleSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->sampleSize:I

    return-void
.end method

.method public setUnknown1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->unknown1:I

    return-void
.end method

.method public setUnknown2(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/apple/AppleLosslessSpecificBox;->unknown2:I

    return-void
.end method
