.class public final Lcom/coremedia/iso/boxes/BitRateBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "BitRateBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "btrt"


# instance fields
.field private avgBitrate:J

.field private bufferSizeDb:J

.field private maxBitrate:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "btrt"

    .line 47
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 56
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/BitRateBox;->bufferSizeDb:J

    .line 57
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/BitRateBox;->maxBitrate:J

    .line 58
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/BitRateBox;->avgBitrate:J

    return-void
.end method

.method public getAvgBitrate()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/BitRateBox;->avgBitrate:J

    return-wide v0
.end method

.method public getBufferSizeDb()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/BitRateBox;->bufferSizeDb:J

    return-wide v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/BitRateBox;->bufferSizeDb:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 64
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/BitRateBox;->maxBitrate:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 65
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/BitRateBox;->avgBitrate:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    const-wide/16 v0, 0xc

    return-wide v0
.end method

.method public getMaxBitrate()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/BitRateBox;->maxBitrate:J

    return-wide v0
.end method

.method public setAvgBitrate(J)V
    .locals 0

    .line 89
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/BitRateBox;->avgBitrate:J

    return-void
.end method

.method public setBufferSizeDb(J)V
    .locals 0

    .line 73
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/BitRateBox;->bufferSizeDb:J

    return-void
.end method

.method public setMaxBitrate(J)V
    .locals 0

    .line 81
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/BitRateBox;->maxBitrate:J

    return-void
.end method
