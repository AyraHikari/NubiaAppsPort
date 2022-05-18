.class public Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;
.super Ljava/lang/Object;
.source "SampleToChunkBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coremedia/iso/boxes/SampleToChunkBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field firstChunk:J

.field sampleDescriptionIndex:J

.field samplesPerChunk:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->firstChunk:J

    .line 119
    iput-wide p3, p0, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->samplesPerChunk:J

    .line 120
    iput-wide p5, p0, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->sampleDescriptionIndex:J

    return-void
.end method


# virtual methods
.method public getFirstChunk()J
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->firstChunk:J

    return-wide v0
.end method

.method public getSampleDescriptionIndex()J
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->sampleDescriptionIndex:J

    return-wide v0
.end method

.method public getSamplesPerChunk()J
    .locals 2

    .line 132
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->samplesPerChunk:J

    return-wide v0
.end method

.method public setFirstChunk(J)V
    .locals 0

    .line 128
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->firstChunk:J

    return-void
.end method

.method public setSampleDescriptionIndex(J)V
    .locals 0

    .line 144
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->sampleDescriptionIndex:J

    return-void
.end method

.method public setSamplesPerChunk(J)V
    .locals 0

    .line 136
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->samplesPerChunk:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry{firstChunk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->firstChunk:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", samplesPerChunk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->samplesPerChunk:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleDescriptionIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->sampleDescriptionIndex:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
