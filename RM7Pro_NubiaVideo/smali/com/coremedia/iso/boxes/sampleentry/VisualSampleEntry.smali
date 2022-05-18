.class public Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "SourceFile"

# interfaces
.implements Lcom/coremedia/iso/boxes/ContainerBox;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TYPE1:Ljava/lang/String; = "mp4v"

.field public static final TYPE2:Ljava/lang/String; = "s263"

.field public static final TYPE3:Ljava/lang/String; = "avc1"

.field public static final TYPE_ENCRYPTED:Ljava/lang/String; = "encv"


# instance fields
.field private compressorname:Ljava/lang/String;

.field private depth:I

.field private frameCount:I

.field private height:I

.field private horizresolution:D

.field private predefined:[J

.field private vertresolution:D

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V

    const-wide/high16 v0, 0x4052000000000000L    # 72.0

    .line 2
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->horizresolution:D

    .line 3
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->vertresolution:D

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->frameCount:I

    const/16 p1, 0x18

    .line 5
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->depth:I

    const/4 p1, 0x3

    new-array p1, p1, [J

    .line 6
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->predefined:[J

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 2
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    .line 3
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    .line 4
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->predefined:[J

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 5
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->predefined:[J

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 6
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->predefined:[J

    const/4 v1, 0x2

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 7
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->width:I

    .line 8
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->height:I

    .line 9
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint1616(Ljava/nio/ByteBuffer;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->horizresolution:D

    .line 10
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint1616(Ljava/nio/ByteBuffer;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->vertresolution:D

    .line 11
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    .line 12
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->frameCount:I

    .line 13
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_0

    .line 14
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid compressor name displayable data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 15
    :cond_0
    new-array v2, v0, [B

    .line 16
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 17
    invoke-static {v2}, Lcom/coremedia/iso/Utf8;->convert([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->compressorname:Ljava/lang/String;

    if-ge v0, v1, :cond_1

    sub-int/2addr v1, v0

    .line 18
    new-array v0, v1, [B

    .line 19
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 20
    :cond_1
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->depth:I

    .line 21
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    .line 22
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->_parseChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public getCompressorname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->compressorname:Ljava/lang/String;

    return-object v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->_writeReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 3
    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 4
    iget-object v1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->predefined:[J

    aget-wide v2, v1, v0

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 5
    iget-object v1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->predefined:[J

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 6
    iget-object v1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->predefined:[J

    const/4 v2, 0x2

    aget-wide v2, v1, v2

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 7
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getWidth()I

    move-result v1

    invoke-static {p1, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 8
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHeight()I

    move-result v1

    invoke-static {p1, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 9
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHorizresolution()D

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeFixedPont1616(Ljava/nio/ByteBuffer;D)V

    .line 10
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getVertresolution()D

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeFixedPont1616(Ljava/nio/ByteBuffer;D)V

    const-wide/16 v1, 0x0

    .line 11
    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 12
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getFrameCount()I

    move-result v1

    invoke-static {p1, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 13
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getCompressorname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 14
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getCompressorname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getCompressorname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 16
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getDepth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    const v0, 0xffff

    .line 18
    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->_writeChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContentSize()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x4e

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/Box;

    .line 2
    invoke-interface {v3}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getDepth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->depth:I

    return v0
.end method

.method public getFrameCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->frameCount:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->height:I

    return v0
.end method

.method public getHorizresolution()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->horizresolution:D

    return-wide v0
.end method

.method public getVertresolution()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->vertresolution:D

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->width:I

    return v0
.end method

.method public setCompressorname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->compressorname:Ljava/lang/String;

    return-void
.end method

.method public setDepth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->depth:I

    return-void
.end method

.method public setFrameCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->frameCount:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->height:I

    return-void
.end method

.method public setHorizresolution(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->horizresolution:D

    return-void
.end method

.method public setVertresolution(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->vertresolution:D

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->width:I

    return-void
.end method
