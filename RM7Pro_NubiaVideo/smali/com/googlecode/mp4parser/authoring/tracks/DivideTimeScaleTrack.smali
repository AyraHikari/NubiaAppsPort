.class public Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/Track;


# instance fields
.field source:Lcom/googlecode/mp4parser/authoring/Track;

.field private timeScaleDivisor:I


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/Track;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    .line 3
    iput p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->timeScaleDivisor:I

    return-void
.end method


# virtual methods
.method adjustCtts()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    .line 4
    new-instance v3, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v4

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v2

    iget v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->timeScaleDivisor:I

    div-int/2addr v2, v5

    invoke-direct {v3, v4, v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method adjustTts()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 4
    new-instance v3, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v6

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->timeScaleDivisor:I

    int-to-long v8, v2

    div-long/2addr v6, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getCompositionTimeEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->adjustCtts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDecodingTimeEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->adjustTts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

    move-result-object v0

    return-object v0
.end method

.method public getSampleDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v0

    return-object v0
.end method

.method public getSamples()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    move-result-object v0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v0

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 2
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v1

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->timeScaleDivisor:I

    int-to-long v3, v3

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isInMovie()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->isInMovie()Z

    move-result v0

    return v0
.end method

.method public isInPoster()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->isInPoster()Z

    move-result v0

    return v0
.end method

.method public isInPreview()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->isInPreview()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiplyTimeScaleTrack{source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DivideTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
