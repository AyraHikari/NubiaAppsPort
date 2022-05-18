.class public Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "SourceFile"


# instance fields
.field DTSSamplingFrequency:J

.field LBRDurationMod:I

.field avgBitRate:J

.field channelLayout:I

.field coreLFEPresent:I

.field coreLayout:I

.field coreSize:I

.field frameDuration:I

.field maxBitRate:J

.field multiAssetFlag:I

.field pcmSampleDepth:I

.field representationType:I

.field reserved:I

.field reservedBoxPresent:I

.field stereoDownmix:I

.field streamConstruction:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ddts"

    .line 1
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->DTSSamplingFrequency:J

    .line 2
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->maxBitRate:J

    .line 3
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->avgBitRate:J

    .line 4
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->pcmSampleDepth:I

    .line 5
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 p1, 0x2

    .line 6
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->frameDuration:I

    const/4 p1, 0x5

    .line 7
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->streamConstruction:I

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreLFEPresent:I

    const/4 v2, 0x6

    .line 9
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreLayout:I

    const/16 v2, 0xe

    .line 10
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreSize:I

    .line 11
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->stereoDownmix:I

    const/4 v2, 0x3

    .line 12
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->representationType:I

    const/16 v2, 0x10

    .line 13
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->channelLayout:I

    .line 14
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->multiAssetFlag:I

    .line 15
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->LBRDurationMod:I

    .line 16
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->reservedBoxPresent:I

    .line 17
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->reserved:I

    return-void
.end method

.method public getAvgBitRate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->avgBitRate:J

    return-wide v0
.end method

.method public getChannelLayout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->channelLayout:I

    return v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->DTSSamplingFrequency:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 2
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->maxBitRate:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 3
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->avgBitRate:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 4
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->pcmSampleDepth:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 5
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 6
    iget p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->frameDuration:I

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 7
    iget p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->streamConstruction:I

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 8
    iget p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreLFEPresent:I

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 9
    iget p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreLayout:I

    const/4 v3, 0x6

    invoke-virtual {v0, p1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 10
    iget p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreSize:I

    const/16 v3, 0xe

    invoke-virtual {v0, p1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 11
    iget p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->stereoDownmix:I

    invoke-virtual {v0, p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 12
    iget p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->representationType:I

    const/4 v3, 0x3

    invoke-virtual {v0, p1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 13
    iget p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->channelLayout:I

    const/16 v3, 0x10

    invoke-virtual {v0, p1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 14
    iget p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->multiAssetFlag:I

    invoke-virtual {v0, p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 15
    iget p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->LBRDurationMod:I

    invoke-virtual {v0, p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 16
    iget p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->reservedBoxPresent:I

    invoke-virtual {v0, p1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 17
    iget p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->reserved:I

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    const-wide/16 v0, 0x14

    return-wide v0
.end method

.method public getCoreLFEPresent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreLFEPresent:I

    return v0
.end method

.method public getCoreLayout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreLayout:I

    return v0
.end method

.method public getCoreSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreSize:I

    return v0
.end method

.method public getDTSSamplingFrequency()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->DTSSamplingFrequency:J

    return-wide v0
.end method

.method public getFrameDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->frameDuration:I

    return v0
.end method

.method public getLBRDurationMod()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->LBRDurationMod:I

    return v0
.end method

.method public getMaxBitRate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->maxBitRate:J

    return-wide v0
.end method

.method public getMultiAssetFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->multiAssetFlag:I

    return v0
.end method

.method public getPcmSampleDepth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->pcmSampleDepth:I

    return v0
.end method

.method public getRepresentationType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->representationType:I

    return v0
.end method

.method public getReserved()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->reserved:I

    return v0
.end method

.method public getReservedBoxPresent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->reservedBoxPresent:I

    return v0
.end method

.method public getStereoDownmix()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->stereoDownmix:I

    return v0
.end method

.method public getStreamConstruction()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->streamConstruction:I

    return v0
.end method

.method public setAvgBitRate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->avgBitRate:J

    return-void
.end method

.method public setChannelLayout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->channelLayout:I

    return-void
.end method

.method public setCoreLFEPresent(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreLFEPresent:I

    return-void
.end method

.method public setCoreLayout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreLayout:I

    return-void
.end method

.method public setCoreSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreSize:I

    return-void
.end method

.method public setDTSSamplingFrequency(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->DTSSamplingFrequency:J

    return-void
.end method

.method public setFrameDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->frameDuration:I

    return-void
.end method

.method public setLBRDurationMod(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->LBRDurationMod:I

    return-void
.end method

.method public setMaxBitRate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->maxBitRate:J

    return-void
.end method

.method public setMultiAssetFlag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->multiAssetFlag:I

    return-void
.end method

.method public setPcmSampleDepth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->pcmSampleDepth:I

    return-void
.end method

.method public setRepresentationType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->representationType:I

    return-void
.end method

.method public setReserved(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->reserved:I

    return-void
.end method

.method public setReservedBoxPresent(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->reservedBoxPresent:I

    return-void
.end method

.method public setStereoDownmix(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->stereoDownmix:I

    return-void
.end method

.method public setStreamConstruction(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->streamConstruction:I

    return-void
.end method
