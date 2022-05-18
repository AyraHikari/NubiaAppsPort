.class public Lcom/coremedia/iso/boxes/HintMediaHeaderBox;
.super Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
.source "HintMediaHeaderBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "hmhd"


# instance fields
.field private avgBitrate:J

.field private avgPduSize:I

.field private maxBitrate:J

.field private maxPduSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "hmhd"

    .line 38
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 64
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;->maxPduSize:I

    .line 65
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;->avgPduSize:I

    .line 66
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;->maxBitrate:J

    .line 67
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;->avgBitrate:J

    .line 68
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    return-void
.end method

.method public getAvgBitrate()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;->avgBitrate:J

    return-wide v0
.end method

.method public getAvgPduSize()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;->avgPduSize:I

    return v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 74
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 75
    iget v0, p0, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;->maxPduSize:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 76
    iget v0, p0, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;->avgPduSize:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 77
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;->maxBitrate:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 78
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;->avgBitrate:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    const-wide/16 v0, 0x0

    .line 79
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    const-wide/16 v0, 0x14

    return-wide v0
.end method

.method public getMaxBitrate()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;->maxBitrate:J

    return-wide v0
.end method

.method public getMaxPduSize()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;->maxPduSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HintMediaHeaderBox{maxPduSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;->maxPduSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgPduSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;->avgPduSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxBitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;->maxBitrate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgBitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;->avgBitrate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
