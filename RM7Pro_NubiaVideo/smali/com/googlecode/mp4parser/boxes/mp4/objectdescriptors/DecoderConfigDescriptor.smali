.class public Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
.super Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;
.source "SourceFile"


# annotations
.annotation runtime Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/Descriptor;
    tags = {
        0x4
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field audioSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

.field avgBitRate:J

.field bufferSizeDB:I

.field configDescriptorDeadBytes:[B

.field decoderSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

.field maxBitRate:J

.field objectTypeIndication:I

.field profileLevelIndicationDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field streamType:I

.field upStream:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->profileLevelIndicationDescriptors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAudioSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->audioSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    return-object v0
.end method

.method public getAvgBitRate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->avgBitRate:J

    return-wide v0
.end method

.method public getBufferSizeDB()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->bufferSizeDB:I

    return v0
.end method

.method public getDecoderSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->decoderSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    return-object v0
.end method

.method public getMaxBitRate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->maxBitRate:J

    return-wide v0
.end method

.method public getObjectTypeIndication()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->objectTypeIndication:I

    return v0
.end method

.method public getProfileLevelIndicationDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->profileLevelIndicationDescriptors:Ljava/util/List;

    return-object v0
.end method

.method public getStreamType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->streamType:I

    return v0
.end method

.method public getUpStream()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->upStream:I

    return v0
.end method

.method public parseDetail(Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->objectTypeIndication:I

    .line 2
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x2

    .line 3
    iput v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->streamType:I

    shr-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    .line 4
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->upStream:I

    .line 5
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt24(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->bufferSizeDB:I

    .line 6
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->maxBitRate:J

    .line 7
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->avgBitRate:J

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, ", size: "

    const/4 v3, 0x2

    if-le v0, v3, :cond_3

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 10
    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->objectTypeIndication:I

    invoke-static {v4, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory;->createFrom(ILjava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;

    move-result-object v4

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int/2addr v5, v0

    .line 12
    sget-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " - DecoderConfigDescr1 read: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;->getSize()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v1

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    if-eqz v4, :cond_1

    .line 13
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;->getSize()I

    move-result v0

    if-ge v5, v0, :cond_1

    sub-int/2addr v0, v5

    .line 14
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->configDescriptorDeadBytes:[B

    .line 15
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 16
    :cond_1
    instance-of v0, v4, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    if-eqz v0, :cond_2

    .line 17
    move-object v0, v4

    check-cast v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->decoderSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    .line 18
    :cond_2
    instance-of v0, v4, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    if-eqz v0, :cond_3

    .line 19
    check-cast v4, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    iput-object v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->audioSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    .line 20
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v4, v0

    .line 22
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->objectTypeIndication:I

    invoke-static {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory;->createFrom(ILjava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v6, v4

    .line 24
    sget-object v4, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " - DecoderConfigDescr2 read: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;->getSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object v6, v1

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 25
    instance-of v4, v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;

    if-eqz v4, :cond_3

    .line 26
    iget-object v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->profileLevelIndicationDescriptors:Ljava/util/List;

    check-cast v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void
.end method

.method public serialize()Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->serializedSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x4

    .line 2
    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 3
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->serializedSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 4
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->objectTypeIndication:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 5
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->streamType:I

    shl-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->upStream:I

    shl-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    or-int/lit8 v1, v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 7
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->bufferSizeDB:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt24(Ljava/nio/ByteBuffer;I)V

    .line 8
    iget-wide v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->maxBitRate:J

    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 9
    iget-wide v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->avgBitRate:J

    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 10
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->audioSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->serialize()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public serializedSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->audioSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->serializedSize()I

    move-result v0

    add-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public setAudioSpecificInfo(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->audioSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    return-void
.end method

.method public setAvgBitRate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->avgBitRate:J

    return-void
.end method

.method public setBufferSizeDB(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->bufferSizeDB:I

    return-void
.end method

.method public setMaxBitRate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->maxBitRate:J

    return-void
.end method

.method public setObjectTypeIndication(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->objectTypeIndication:I

    return-void
.end method

.method public setStreamType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->streamType:I

    return-void
.end method

.method public setUpStream(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->upStream:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecoderConfigDescriptor"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{objectTypeIndication="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->objectTypeIndication:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", streamType="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->streamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", upStream="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->upStream:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bufferSizeDB="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->bufferSizeDB:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxBitRate="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->maxBitRate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", avgBitRate="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->avgBitRate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", decoderSpecificInfo="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->decoderSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audioSpecificInfo="

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->audioSpecificInfo:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configDescriptorDeadBytes="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->configDescriptorDeadBytes:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v2, [B

    :goto_0
    invoke-static {v1}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", profileLevelIndicationDescriptors="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->profileLevelIndicationDescriptors:Ljava/util/List;

    if-nez v1, :cond_1

    const-string v1, "null"

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/util/List;

    aput-object v1, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
