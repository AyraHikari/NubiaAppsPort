.class public Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "TrackFragmentHeaderBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "tfhd"


# instance fields
.field private baseDataOffset:J

.field private defaultSampleDuration:J

.field private defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

.field private defaultSampleSize:J

.field private durationIsEmpty:Z

.field private sampleDescriptionIndex:J

.field private trackId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "tfhd"

    .line 49
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 41
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->baseDataOffset:J

    .line 43
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->defaultSampleDuration:J

    .line 44
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->defaultSampleSize:J

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 97
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 98
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->trackId:J

    .line 99
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 100
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->baseDataOffset:J

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    .line 103
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->sampleDescriptionIndex:J

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    .line 106
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->defaultSampleDuration:J

    .line 108
    :cond_2
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 109
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->defaultSampleSize:J

    .line 111
    :cond_3
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    const/16 v2, 0x20

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    .line 112
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct {v0, p1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    .line 114
    :cond_4
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result p1

    const/high16 v0, 0x10000

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_5

    .line 115
    iput-boolean v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->durationIsEmpty:Z

    :cond_5
    return-void
.end method

.method public getBaseDataOffset()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->baseDataOffset:J

    return-wide v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 75
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 76
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->trackId:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 78
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getBaseDataOffset()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getSampleDescriptionIndex()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getDefaultSampleDuration()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 88
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getDefaultSampleSize()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 90
    :cond_3
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 91
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->getContent(Ljava/nio/ByteBuffer;)V

    :cond_4
    return-void
.end method

.method protected getContentSize()J
    .locals 7

    .line 54
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-wide/16 v1, 0x10

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x8

    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    const-wide/16 v5, 0x4

    if-ne v3, v4, :cond_1

    add-long/2addr v1, v5

    :cond_1
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    add-long/2addr v1, v5

    :cond_2
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3

    add-long/2addr v1, v5

    :cond_3
    const/16 v3, 0x20

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    add-long/2addr v1, v5

    :cond_4
    return-wide v1
.end method

.method public getDefaultSampleDuration()J
    .locals 2

    .line 152
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->defaultSampleDuration:J

    return-wide v0
.end method

.method public getDefaultSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    return-object v0
.end method

.method public getDefaultSampleSize()J
    .locals 2

    .line 156
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->defaultSampleSize:J

    return-wide v0
.end method

.method public getSampleDescriptionIndex()J
    .locals 2

    .line 148
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->sampleDescriptionIndex:J

    return-wide v0
.end method

.method public getTrackId()J
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->trackId:J

    return-wide v0
.end method

.method public hasBaseDataOffset()Z
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasDefaultSampleDuration()Z
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDefaultSampleFlags()Z
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDefaultSampleSize()Z
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSampleDescriptionIndex()Z
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDurationIsEmpty()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->durationIsEmpty:Z

    return v0
.end method

.method public setBaseDataOffset(J)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    const v1, 0x7ffffffe

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setFlags(I)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setFlags(I)V

    .line 177
    :goto_0
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->baseDataOffset:J

    return-void
.end method

.method public setDefaultSampleDuration(J)V
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setFlags(I)V

    .line 191
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->defaultSampleDuration:J

    return-void
.end method

.method public setDefaultSampleFlags(Lcom/coremedia/iso/boxes/fragment/SampleFlags;)V
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x20

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setFlags(I)V

    .line 201
    iput-object p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    return-void
.end method

.method public setDefaultSampleSize(J)V
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setFlags(I)V

    .line 196
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->defaultSampleSize:J

    return-void
.end method

.method public setDurationIsEmpty(Z)V
    .locals 2

    .line 205
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setFlags(I)V

    .line 206
    iput-boolean p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->durationIsEmpty:Z

    return-void
.end method

.method public setSampleDescriptionIndex(J)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    const v1, 0x7ffffffd

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setFlags(I)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setFlags(I)V

    .line 186
    :goto_0
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->sampleDescriptionIndex:J

    return-void
.end method

.method public setTrackId(J)V
    .locals 0

    .line 168
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->trackId:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackFragmentHeaderBox"

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{trackId="

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->trackId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", baseDataOffset="

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->baseDataOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sampleDescriptionIndex="

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->sampleDescriptionIndex:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", defaultSampleDuration="

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->defaultSampleDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", defaultSampleSize="

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->defaultSampleSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", defaultSampleFlags="

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", durationIsEmpty="

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->durationIsEmpty:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
