.class public Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "SourceFile"

# interfaces
.implements Lcom/coremedia/iso/boxes/ContainerBox;


# static fields
.field public static final TYPE1:Ljava/lang/String; = "samr"

.field public static final TYPE10:Ljava/lang/String; = "mlpa"

.field public static final TYPE11:Ljava/lang/String; = "dtsl"

.field public static final TYPE12:Ljava/lang/String; = "dtsh"

.field public static final TYPE13:Ljava/lang/String; = "dtse"

.field public static final TYPE2:Ljava/lang/String; = "sawb"

.field public static final TYPE3:Ljava/lang/String; = "mp4a"

.field public static final TYPE4:Ljava/lang/String; = "drms"

.field public static final TYPE5:Ljava/lang/String; = "alac"

.field public static final TYPE7:Ljava/lang/String; = "owma"

.field public static final TYPE8:Ljava/lang/String; = "ac-3"

.field public static final TYPE9:Ljava/lang/String; = "ec-3"

.field public static final TYPE_ENCRYPTED:Ljava/lang/String; = "enca"


# instance fields
.field private boxParser:Lcom/coremedia/iso/BoxParser;

.field private bytesPerFrame:J

.field private bytesPerPacket:J

.field private bytesPerSample:J

.field private channelCount:I

.field private compressionId:I

.field private packetSize:I

.field private reserved1:I

.field private reserved2:J

.field private sampleRate:J

.field private sampleSize:I

.field private samplesPerPacket:J

.field private soundVersion:I

.field private soundVersion2Data:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 2
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    .line 3
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved1:I

    .line 4
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved2:J

    .line 5
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->channelCount:I

    .line 6
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleSize:I

    .line 7
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->compressionId:I

    .line 8
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->packetSize:I

    .line 9
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleRate:J

    .line 10
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->type:Ljava/lang/String;

    const-string v1, "mlpa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleRate:J

    const/16 v2, 0x10

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleRate:J

    .line 12
    :cond_0
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    if-lez v0, :cond_1

    .line 13
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->samplesPerPacket:J

    .line 14
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerPacket:J

    .line 15
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerFrame:J

    .line 16
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerSample:J

    .line 17
    :cond_1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/16 v0, 0x14

    new-array v1, v0, [B

    .line 18
    iput-object v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion2Data:[B

    .line 19
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 20
    :cond_2
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->_parseChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public getBytesPerFrame()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerFrame:J

    return-wide v0
.end method

.method public getBytesPerPacket()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerPacket:J

    return-wide v0
.end method

.method public getBytesPerSample()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerSample:J

    return-wide v0
.end method

.method public getChannelCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->channelCount:I

    return v0
.end method

.method public getCompressionId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->compressionId:I

    return v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->_writeReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 2
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 3
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved1:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 4
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved2:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 5
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->channelCount:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 6
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleSize:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 7
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->compressionId:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 8
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->packetSize:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 9
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->type:Ljava/lang/String;

    const-string v1, "mlpa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v0

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 12
    :goto_0
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    if-lez v0, :cond_1

    .line 13
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->samplesPerPacket:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 14
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerPacket:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 15
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerFrame:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 16
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerSample:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 17
    :cond_1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 18
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion2Data:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 19
    :cond_2
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->_writeChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContentSize()J
    .locals 7

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    const-wide/16 v1, 0x0

    if-lez v0, :cond_0

    const-wide/16 v3, 0x10

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    const-wide/16 v5, 0x1c

    add-long/2addr v3, v5

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    const-wide/16 v1, 0x14

    :cond_1
    add-long/2addr v3, v1

    .line 2
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 3
    invoke-interface {v1}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v1

    add-long/2addr v3, v1

    goto :goto_1

    :cond_2
    return-wide v3
.end method

.method public getPacketSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->packetSize:I

    return v0
.end method

.method public getReserved1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved1:I

    return v0
.end method

.method public getReserved2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved2:J

    return-wide v0
.end method

.method public getSampleRate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleRate:J

    return-wide v0
.end method

.method public getSampleSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleSize:I

    return v0
.end method

.method public getSamplesPerPacket()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->samplesPerPacket:J

    return-wide v0
.end method

.method public getSoundVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    return v0
.end method

.method public getSoundVersion2Data()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion2Data:[B

    return-object v0
.end method

.method public setBoxParser(Lcom/coremedia/iso/BoxParser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->boxParser:Lcom/coremedia/iso/BoxParser;

    return-void
.end method

.method public setBytesPerFrame(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerFrame:J

    return-void
.end method

.method public setBytesPerPacket(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerPacket:J

    return-void
.end method

.method public setBytesPerSample(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerSample:J

    return-void
.end method

.method public setChannelCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->channelCount:I

    return-void
.end method

.method public setCompressionId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->compressionId:I

    return-void
.end method

.method public setPacketSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->packetSize:I

    return-void
.end method

.method public setReserved1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved1:I

    return-void
.end method

.method public setReserved2(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->reserved2:J

    return-void
.end method

.method public setSampleRate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleRate:J

    return-void
.end method

.method public setSampleSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleSize:I

    return-void
.end method

.method public setSamplesPerPacket(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->samplesPerPacket:J

    return-void
.end method

.method public setSoundVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    return-void
.end method

.method public setSoundVersion2Data([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion2Data:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioSampleEntry{bytesPerSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerSample:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bytesPerFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerFrame:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bytesPerPacket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->bytesPerPacket:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", samplesPerPacket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->samplesPerPacket:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", packetSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->packetSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", compressionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->compressionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", soundVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->soundVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleRate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sampleSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->sampleSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->channelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", boxes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
