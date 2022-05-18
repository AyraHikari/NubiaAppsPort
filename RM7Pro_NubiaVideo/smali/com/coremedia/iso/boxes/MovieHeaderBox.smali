.class public Lcom/coremedia/iso/boxes/MovieHeaderBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SourceFile"


# static fields
.field public static final TYPE:Ljava/lang/String; = "mvhd"


# instance fields
.field private creationTime:J

.field private currentTime:I

.field private duration:J

.field private matrix:[J

.field private modificationTime:J

.field private nextTrackId:J

.field private posterTime:I

.field private previewDuration:I

.field private previewTime:I

.field private rate:D

.field private selectionDuration:I

.field private selectionTime:I

.field private timescale:J

.field private volume:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "mvhd"

    .line 1
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->rate:D

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->volume:F

    const/16 v0, 0x9

    new-array v0, v0, [J

    .line 4
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->matrix:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x10000
        0x0
        0x0
        0x0
        0x10000
        0x0
        0x0
        0x0
        0x40000000
    .end array-data
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractFullBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->creationTime:J

    .line 4
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->modificationTime:J

    .line 5
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->timescale:J

    .line 6
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->duration:J

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->creationTime:J

    .line 8
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->modificationTime:J

    .line 9
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->timescale:J

    .line 10
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->duration:J

    .line 11
    :goto_0
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint1616(Ljava/nio/ByteBuffer;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->rate:D

    .line 12
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint88(Ljava/nio/ByteBuffer;)F

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->volume:F

    .line 13
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    .line 14
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    .line 15
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    const/16 v0, 0x9

    new-array v1, v0, [J

    .line 16
    iput-object v1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->matrix:[J

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 17
    iget-object v2, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->matrix:[J

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->previewTime:I

    .line 19
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->previewDuration:I

    .line 20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->posterTime:I

    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->selectionTime:I

    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->selectionDuration:I

    .line 23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->currentTime:I

    .line 24
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->nextTrackId:J

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractFullBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->creationTime:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 4
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->modificationTime:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 5
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->timescale:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 6
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->duration:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    .line 7
    :cond_0
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->creationTime:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 8
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->modificationTime:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 9
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->timescale:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 10
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->duration:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 11
    :goto_0
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->rate:D

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeFixedPont1616(Ljava/nio/ByteBuffer;D)V

    .line 12
    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->volume:F

    float-to-double v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeFixedPont88(Ljava/nio/ByteBuffer;D)V

    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    const-wide/16 v1, 0x0

    .line 14
    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 15
    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    :goto_1
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 16
    iget-object v1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->matrix:[J

    aget-wide v2, v1, v0

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 17
    :cond_1
    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->previewTime:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 18
    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->previewDuration:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 19
    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->posterTime:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 20
    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->selectionTime:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 21
    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->selectionDuration:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 22
    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->currentTime:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 23
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->nextTrackId:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method protected getContentSize()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractFullBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x20

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x14

    :goto_0
    const-wide/16 v2, 0x50

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getCreationTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->creationTime:J

    return-wide v0
.end method

.method public getCurrentTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->currentTime:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->duration:J

    return-wide v0
.end method

.method public getMatrix()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->matrix:[J

    return-object v0
.end method

.method public getModificationTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->modificationTime:J

    return-wide v0
.end method

.method public getNextTrackId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->nextTrackId:J

    return-wide v0
.end method

.method public getPosterTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->posterTime:I

    return v0
.end method

.method public getPreviewDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->previewDuration:I

    return v0
.end method

.method public getPreviewTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->previewTime:I

    return v0
.end method

.method public getRate()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->rate:D

    return-wide v0
.end method

.method public getSelectionDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->selectionDuration:I

    return v0
.end method

.method public getSelectionTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->selectionTime:I

    return v0
.end method

.method public getTimescale()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->timescale:J

    return-wide v0
.end method

.method public getVolume()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->volume:F

    return v0
.end method

.method public setCreationTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->creationTime:J

    return-void
.end method

.method public setCurrentTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->currentTime:I

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->duration:J

    return-void
.end method

.method public setMatrix([J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->matrix:[J

    return-void
.end method

.method public setModificationTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->modificationTime:J

    return-void
.end method

.method public setNextTrackId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->nextTrackId:J

    return-void
.end method

.method public setPosterTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->posterTime:I

    return-void
.end method

.method public setPreviewDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->previewDuration:I

    return-void
.end method

.method public setPreviewTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->previewTime:I

    return-void
.end method

.method public setRate(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->rate:D

    return-void
.end method

.method public setSelectionDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->selectionDuration:I

    return-void
.end method

.method public setSelectionTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->selectionTime:I

    return-void
.end method

.method public setTimescale(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->timescale:J

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->volume:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MovieHeaderBox["

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "creationTime="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getCreationTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ";"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "modificationTime="

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getModificationTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "timescale="

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getTimescale()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "duration="

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "rate="

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getRate()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "volume="

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getVolume()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->matrix:[J

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "matrix"

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->matrix:[J

    aget-wide v4, v3, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "nextTrackId="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getNextTrackId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
